document.addEventListener('DOMContentLoaded', () => {
    
    window.showEnrollmentForm = function() {
        document.getElementById('initial-choice').style.display = 'none';
        document.getElementById('enrollment-form').style.display = 'block';
        document.getElementById('students-list').style.display = 'none';
    };

    window.showStudentsList = function() {
        document.getElementById('initial-choice').style.display = 'none';
        document.getElementById('enrollment-form').style.display = 'none';
        document.getElementById('students-list').style.display = 'block';
    };
});
