import json
from multiprocessing import context
from django.shortcuts import redirect, render
from django.http import  HttpResponse, JsonResponse
from django.contrib import messages

from store.models import Order,OrderItem
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from store.models import Cart
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User


def index(request):
    orders=Order.objects.filter(user=request.user)
    context={'orders':orders}
    return render(request,'store/orders/index.html',context)

def vieworder(request,t_no):
    order=Order.objects.filter(tracking_no=t_no).filter(user=request.user).first()
    orderitems=OrderItem.objects.filter(order=order)
    context={'order':order,'orderitems':orderitems}
    return render(request,'store/orders/view.html',context)
    