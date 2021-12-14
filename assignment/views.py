from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
from django.db import connection


# Create your views here.

def listing(request):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM assignment, subject WHERE subject_id = assignment_subject_id")
    assignmentlist = dictfetchall(cursor)

    context = {
        "assignmentlist": assignmentlist
    }

    # Message according medicines Role #
    context['heading'] = "Assignment  Details";
    return render(request, 'assignment-details.html', context)

def lists(request, id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM assignment, subject WHERE subject_id = assignment_subject_id AND assignment_subject_id = " + id)
    assignmentlist = dictfetchall(cursor)

    context = {
        "assignmentlist": assignmentlist
    }

    # Message according medicines Role #
    context['heading'] = "Assignment  Details";
    return render(request, 'assignment-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM assignment WHERE assignment_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];

def update(request, assignmentId):
    context = {
        "fn": "update",
        "assignmentDetails": getData(assignmentId),
        "levelslist": getDropDown('level', 'level_id'),
        "subjectlist": getDropDown('subject', 'subject_id'),
        "heading": 'Update Assignment ',
    }
    if (request.method == "POST"):
        assignment_file = None
        assignment_file = request.POST['avail_file']
        if(request.FILES and request.FILES['assignment_file']):
            assignmentFile = request.FILES['assignment_file']
            fs = FileSystemStorage()
            filename = fs.save(assignmentFile.name, assignmentFile)
            assignment_file = fs.url(assignmentFile)
        cursor = connection.cursor()
        cursor.execute("""
                   UPDATE assignment
                   SET assignment_title=%s, assignment_subject_id=%s, assignment_file=%s, assignment_due_date=%s, assignment_description=%s WHERE assignment_id = %s
                """, (
            request.POST['assignment_title'],
            request.POST['assignment_subject_id'],
            assignment_file,
            request.POST['assignment_due_date'],
            request.POST['assignment_description'],
            assignmentId
        ))
        context["assignmentDetails"] =  getData(assignmentId)
        messages.add_message(request, messages.INFO, "Assignment  updated succesfully !!!")
        return redirect('assignment-listing')
    else:
        return render(request, 'assignment.html', context)


def add(request):
    context = {
        "fn": "add",
        "subjectlist": getDropDown('subject', 'subject_id'),
        "studentlist": getDropDown('users_user', 'user_level_id = 2'),
        "heading": 'Add Assignment '
    };

    if (request.method == "POST"):
        assignment_file = None

        if(request.FILES and request.FILES['assignment_file']):
            assignmentFile = request.FILES['assignment_file']
            fs = FileSystemStorage()
            filename = fs.save(assignmentFile.name, assignmentFile)
            assignment_file = fs.url(assignmentFile)
            
        cursor = connection.cursor()
        cursor.execute("""
		   INSERT INTO assignment
		   SET assignment_title=%s, assignment_subject_id=%s, assignment_file=%s, assignment_due_date=%s, assignment_description=%s
		""", (
            request.POST['assignment_title'],
            request.POST['assignment_subject_id'],
            assignment_file,
            request.POST['assignment_due_date'],
            request.POST['assignment_description']))
        return redirect('assignment-listing')
    return render(request, 'assignment.html', context)

def delete(request, id):
    cursor = connection.cursor()
    sql = 'DELETE FROM assignment WHERE assignment_id=' + id
    cursor.execute(sql)
    messages.add_message(request, messages.INFO, "Assignment  Deleted succesfully !!!")
    return redirect('assignment-listing')

def getDropDown(table, condtion):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM " + table + " WHERE " + condtion)
    dropdownList = dictfetchall(cursor)
    return dropdownList;