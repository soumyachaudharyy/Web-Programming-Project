import random
import string
import enum
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from flask import request, redirect, url_for, flash
import os

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:2221@localhost:3306/bhagwanbachao'
app.config['SECRET_KEY'] = os.environ.get('abcd', 'optional_default')
db = SQLAlchemy(app)


class GenderEnum(enum.Enum):
    Male = 'Male'
    Female = 'Female'
    Other = 'Other'


class classes(db.Model):
    __tablename__ = 'classes'
    class_id = db.Column(db.String(5), primary_key=True)
    # Relationship - one class has many student details
    student_details = db.relationship('student_details', backref='class_')


class student_details(db.Model):
    __tablename__ = 'student_details'
    student_id = db.Column(db.String(6), primary_key=True)
    full_name = db.Column(db.String(50))
    class_id = db.Column(db.String(5), db.ForeignKey('classes.class_id'))
    section = db.Column(db.String(3))
    gender = db.Column(db.Enum(GenderEnum))
    # Relationships - one student has one family details and additional details
    family_details = db.relationship(
        'family_details', backref='student', uselist=False)
    additional_details = db.relationship(
        'additional_details', backref='student', uselist=False)
    student_grades = db.relationship(
        'student_grades', back_populates='student')


class family_details(db.Model):
    __tablename__ = 'family_details'
    student_id = db.Column(db.String(6), db.ForeignKey(
        'student_details.student_id'), primary_key=True)
    aadhar_number = db.Column(db.String(50))
    father_name = db.Column(db.String(50))
    mother_name = db.Column(db.String(50))
    social_category = db.Column(db.String(50))
    father_phone = db.Column(db.BigInteger)
    father_aadhar = db.Column(db.String(50))
    mother_aadhar = db.Column(db.String(50))


class additional_details(db.Model):
    __tablename__ = 'additional_details'
    student_id = db.Column(db.String(6), db.ForeignKey(
        'student_details.student_id'), primary_key=True)
    srn_number = db.Column(db.BigInteger)
    pen_num = db.Column(db.BigInteger)
    admission_no = db.Column(db.Integer)
    dob = db.Column(db.Date)
    admission_date = db.Column(db.Date)


class subjects(db.Model):
    __tablename__ = 'subjects'
    subject_id = db.Column(db.String(4), primary_key=True)
    subject_name = db.Column(db.String(50))
    # Relationship - one subject has many grades
    student_grades = db.relationship(
        'student_grades', back_populates='subject')
    # classes = db.relationship(
    #     'Classes', secondary='class_subjects', back_populates='subjects')


class student_grades(db.Model):
    __tablename__ = 'student_grades'
    grade_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    student_id = db.Column(db.String(6), db.ForeignKey(
        'student_details.student_id'), nullable=False)
    subject_id = db.Column(db.String(4), db.ForeignKey(
        'subjects.subject_id'), nullable=False)
    # Term 1 columns
    period_test_1 = db.Column(db.Integer)
    notebook_1 = db.Column(db.Integer)
    sub_en_1 = db.Column(db.Integer)
    term_1 = db.Column(db.Integer)
    total_1 = db.Column(db.Integer)
    # Term 2 columns
    period_test_2 = db.Column(db.Integer)
    notebook_2 = db.Column(db.Integer)
    sub_en_2 = db.Column(db.Integer)
    term_2 = db.Column(db.Integer)
    total_2 = db.Column(db.Integer)
    # Overall total and percentage
    gtotal = db.Column(db.Integer)
    percentage = db.Column(db.Numeric(5, 2))
    # Relationships
    student = db.relationship(
        'student_details', back_populates='student_grades')
    subject = db.relationship('subjects', back_populates='student_grades')


class teacher_details(db.Model):
    __tablename__ = 'teacher_details'
    teacher_id = db.Column(db.String(6), primary_key=True)
    full_name = db.Column(db.String(50))
    phone = db.Column(db.BigInteger)
    age = db.Column(db.Integer)
    gender = db.Column(db.Enum(GenderEnum))
    # Relationship - one teacher has many teacher subjects
    teacher_subjects = db.relationship('teacher_subjects', backref='teacher')


class teacher_subjects(db.Model):
    __tablename__ = 'teacher_subjects'
    teacher_id = db.Column(db.String(6), db.ForeignKey(
        'teacher_details.teacher_id'), primary_key=True)
    subject_id = db.Column(db.String(4), db.ForeignKey(
        'subjects.subject_id'), primary_key=True)


class class_subjects(db.Model):
    __tablename__ = 'class_subjects'
    class_id = db.Column(db.String(5), db.ForeignKey(
        'classes.class_id'), primary_key=True)
    subject_id = db.Column(db.String(4), db.ForeignKey(
        'subjects.subject_id'), primary_key=True)
    class_ = db.relationship('classes', backref='class_subjects')
    subject = db.relationship('subjects', backref='subject_classes')


with app.app_context():
    db.create_all()

# Models:


@app.route('/')
def home():
    return render_template('index.html')


@app.route('/students')
def list_students():
    students = student_details.query.all()
    return render_template('students.html', students=students)


def get_students_by_name(search_query):
    search_result = student_details.query.filter(
        student_details.full_name.ilike(f'%{search_query}%')).all()
    return search_result


@app.route('/students', methods=['GET', 'POST'])
def students_details():
    search_result = None
    if request.method == 'POST':
        search_query = request.form.get('search', '')
        # Assume get_students_by_name is a function that queries the database
        search_result = get_students_by_name(search_query)
    return render_template('students.html', search_result=search_result)


@app.route('/students/<student_id>')
def student_details_view(student_id):
    student = student_details.query.get_or_404(student_id)
    family = student.family_details
    additional = student.additional_details
    grades = student.student_grades

    return render_template('student_details.html', student=student, family=family, additional=additional, grades=grades)


def generate_code(length=6):
    return ''.join(random.choices(string.ascii_uppercase + string.digits, k=length))


@app.route('/students/add', methods=['GET', 'POST'])
def add_student():
    if request.method == 'POST':
        student_id = generate_code()
        full_name = request.form.get('full_name')
        class_id = request.form.get('class_id')
        section = request.form.get('section')
        gender = request.form.get('gender')

        # Ensure the generated student_id is unique
        while student_details.query.filter_by(student_id=student_id).first() is not None:
            student_id = generate_code()

        # Create the new student
        new_student = student_details(
            student_id=student_id,
            full_name=full_name,
            class_id=class_id,
            section=section,
            gender=gender
        )

        existing_subjects = class_subjects.query.filter_by(
            class_id=class_id).first()
        if not existing_subjects:
            all_subjects = subjects.query.all()  # Fetch all subjects
            for subject in all_subjects:
                # Create a new Class_Subjects entry for each subject
                new_class_subject = class_subjects(
                    class_id=class_id, subject_id=subject.subject_id)
                db.session.add(new_class_subject)

        db.session.add(new_student)
        try:
            db.session.commit()
            flash(
                'Student added successfully and all subjects assigned to the class.', 'success')
        except Exception as e:
            db.session.rollback()
            flash(
                f'Error adding student and assigning subjects to class: {e}', 'error')

        return redirect(url_for('add_student'))

    # Render the form for adding a new student
    all_classes = classes.query.all()  # Assuming you want to list classes in the form
    return render_template('add_student.html', all_classes=all_classes)


@app.route('/teachers', methods=['GET', 'POST'])
def teachers_details():
    if request.method == 'POST':
        search_query = request.form.get('search', '')
        teachers = teacher_details.query.filter(
            teacher_details.full_name.ilike(f'%{search_query}%')).all()
    else:
        teachers = teacher_details.query.all()
    return render_template('teachers.html', teachers=teachers)


@app.route('/teachers/add', methods=['GET', 'POST'])
def add_teacher():
    if request.method == 'POST':
        teacher_id = generate_code()
        new_teacher = teacher_details(
            teacher_id=teacher_id,
            full_name=request.form.get('full_name'),
            age=request.form.get('age'),
            phone=request.form.get('phone'),
            gender=request.form.get('gender')
        )
        db.session.add(new_teacher)
        db.session.commit()
        return redirect(url_for('teachers_details'))

    return render_template('add_teacher.html')


@app.route('/student/<student_id>/enter_marks', methods=['GET', 'POST'])
def enter_marks(student_id):
    student = student_details.query.get_or_404(student_id)
    class_subject_relations = class_subjects.query.filter_by(
        class_id=student.class_id).all()
    subjects = [relation.subject for relation in class_subject_relations]

    if request.method == 'POST':
        for subject in subjects:
            period_test_1 = request.form.get(
                f'period_test_1_{subject.subject_id}', type=float, default=0)
            notebook_1 = request.form.get(
                f'notebook_1_{subject.subject_id}', type=int, default=0)
            sub_en_1 = request.form.get(
                f'sub_en_1_{subject.subject_id}', type=int, default=0)
            term_1 = request.form.get(
                f'term_1_{subject.subject_id}', type=int, default=0)
            total_1 = request.form.get(
                f'total_1_{subject.subject_id}', type=int, default=0)
            period_test_2 = request.form.get(
                f'period_test_2_{subject.subject_id}', type=int, default=0)
            notebook_2 = request.form.get(
                f'notebook_2_{subject.subject_id}', type=int, default=0)
            sub_en_2 = request.form.get(
                f'sub_en_2_{subject.subject_id}', type=int, default=0)
            term_2 = request.form.get(
                f'term_2_{subject.subject_id}', type=int, default=0)
            total_2 = request.form.get(
                f'total_2_{subject.subject_id}', type=int, default=0)
            gtotal = total_1 + total_2
            maximum_possible_marks = 100  # Example value, adjust as necessary
            percentage = (gtotal / maximum_possible_marks) * \
                100 if maximum_possible_marks > 0 else 0

            grade_data = {
                'period_test_1': period_test_1,
                'notebook_1': notebook_1,
                'sub_en_1': sub_en_1,
                'term_1': term_1,
                'total_1': total_1,
                'period_test_2': period_test_2,
                'notebook_2': notebook_2,
                'sub_en_2': sub_en_2,
                'term_2': term_2,
                'total_2': total_2,
                'gtotal': gtotal,
                'percentage': percentage
            }

            existing_grade = student_grades.query.filter_by(
                student_id=student_id, subject_id=subject.subject_id).first()
            if existing_grade:
                for key, value in grade_data.items():
                    setattr(existing_grade, key, value)
            else:
                new_grade = student_grades(
                    student_id=student_id, subject_id=subject.subject_id, **grade_data)
                db.session.add(new_grade)

        try:
            db.session.commit()
            flash('Marks entered successfully.', 'success')
        except Exception as e:
            db.session.rollback()
            flash(f'An error occurred: {e}', 'error')

        return redirect(url_for('student_details_view', student_id=student_id))
    return render_template('enter_marks.html', student=student, subjects=subjects)


if __name__ == '__main__':
    app.run(debug=True)
