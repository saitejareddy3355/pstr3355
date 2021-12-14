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
    cursor.execute("SELECT * FROM subject")
    subjectlist = dictfetchall(cursor)

    context = {
        "subjectlist": subjectlist
    }

    # Message according medicines Role #
    context['heading'] = "Subject Details";
    return render(request, 'subject-details.html', context)

def lists(request):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM subject")
    subjectlist = dictfetchall(cursor)

    context = {
        "subjectlist": subjectlist
    }

    # Message according medicines Role #
    context['heading'] = "Subject Details";
    return render(request, 'subject-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM subject WHERE subject_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];

def update(request, subjectId):
    context = {
        "fn": "update",
        "subjectDetails": getData(subjectId),
        "heading": 'Update Subject',
    }
    if (request.method == "POST"):
        cursor = connection.cursor()
        cursor.execute("""
                   UPDATE subject
                   SET subject_name=%s, subject_desc=%s WHERE subject_id = %s
                """, (
            request.POST['subject_name'],
            request.POST['subject_desc'],
            subjectId
        ))
        context["subjectDetails"] =  getData(subjectId)
        messages.add_message(request, messages.INFO, "Subject updated succesfully !!!")
        return redirect('subject-listing')
    else:
        return render(request, 'subject.html', context)


def add(request):
    context = {
        "fn": "add",
        "heading": 'Add Subject'
    };
    if (request.method == "POST"):
        cursor = connection.cursor()
        cursor.execute("""
		   INSERT INTO subject
		   SET subject_name=%s, subject_desc=%s
		""", (
            request.POST['subject_name'],
            request.POST['subject_desc']))
        return redirect('subject-listing')
    return render(request, 'subject.html', context)

def delete(request, id):
    cursor = connection.cursor()
    sql = 'DELETE FROM subject WHERE subject_id=' + id
    cursor.execute(sql)
    messages.add_message(request, messages.INFO, "Subject Deleted succesfully !!!")
    return redirect('subject-listing')
