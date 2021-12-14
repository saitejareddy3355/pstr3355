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
    cursor.execute("SELECT * FROM attandance, subject, users_user WHERE attandance_student_id = user_id AND subject_id = attandance_subject_id")
    attandancelist = dictfetchall(cursor)

    context = {
        "attandancelist": attandancelist
    }

    # Message according medicines Role #
    context['heading'] = "Attandance  Details";
    return render(request, 'attandance-details.html', context)

def lists(request, id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM attandance, subject, users_user WHERE attandance_student_id = user_id AND subject_id = attandance_subject_id AND user_id = " + id)
    attandancelist = dictfetchall(cursor)

    context = {
        "attandancelist": attandancelist
    }

    # Message according medicines Role #
    context['heading'] = "Attandance  Details";
    return render(request, 'attandance-list.html', context)

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def getData(id):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM attandance WHERE attandance_id = " + id)
    dataList = dictfetchall(cursor)
    return dataList[0];

def update(request, attandanceId):
    context = {
        "fn": "update",
        "attandanceDetails": getData(attandanceId),
        "subjectlist": getDropDown('subject', 'subject_id'),
        "studentlist": getDropDown('users_user', 'user_level_id = 2'),
        "heading": 'Update Attandance ',
    }
    if (request.method == "POST"):
        cursor = connection.cursor()
        cursor.execute("""
                   UPDATE attandance
                   SET attandance_student_id=%s, attandance_subject_id=%s, attandance_lecture_title=%s, attandance_date=%s, attandance_description=%s WHERE attandance_id = %s
                """, (
            request.POST['attandance_student_id'],
            request.POST['attandance_subject_id'],
            request.POST['attandance_lecture_title'],
            request.POST['attandance_date'],
            request.POST['attandance_description'],
            attandanceId
        ))
        context["attandanceDetails"] =  getData(attandanceId)
        messages.add_message(request, messages.INFO, "Attandance  updated succesfully !!!")
        return redirect('attandance-listing')
    else:
        return render(request, 'attandance.html', context)


def add(request):
    context = {
        "fn": "add",
        "subjectlist": getDropDown('subject', 'subject_id'),
        "studentlist": getDropDown('users_user', 'user_level_id = 2'),
        "heading": 'Add Attandance '
    };
    if (request.method == "POST"):
        cursor = connection.cursor()
        cursor.execute("""
		   INSERT INTO attandance
		   SET attandance_student_id=%s, attandance_subject_id=%s, attandance_lecture_title=%s, attandance_date=%s, attandance_description=%s
		""", (
            request.POST['attandance_student_id'],
            request.POST['attandance_subject_id'],
            request.POST['attandance_lecture_title'],
            request.POST['attandance_date'],
            request.POST['attandance_description']))
        return redirect('attandance-listing')
    return render(request, 'attandance.html', context)

def delete(request, id):
    cursor = connection.cursor()
    sql = 'DELETE FROM attandance WHERE attandance_id=' + id
    cursor.execute(sql)
    messages.add_message(request, messages.INFO, "Attandance  Deleted succesfully !!!")
    return redirect('attandance-listing')

def getDropDown(table, condtion):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM " + table + " WHERE " + condtion)
    dropdownList = dictfetchall(cursor)
    return dropdownList;