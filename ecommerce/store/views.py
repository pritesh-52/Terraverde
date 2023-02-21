from multiprocessing import context
from unicodedata import category
from django.shortcuts import redirect, render
from django.http import  HttpResponse,JsonResponse
from .models import *
from django.contrib import messages
from django.shortcuts import redirect, render
from django.http import  HttpResponse,JsonResponse

def home(request):
    trendingproduct=Product.objects.filter(trending=1)
    context={'trendingproduct':trendingproduct}
    return render(request,'store/index.html',context)


def collections(request):
    category=Category.objects.filter(status=0)   #filter the value of using this status
    context={
        'category':category
        }
    return render(request,'store/collections.html',context)

def collectionsview(request,slug):
    if (Category.objects.filter(slug=slug,status=0)):  #using filter method fiterize the product
        products=Product.objects.filter(slug=slug) 
        category=Category.objects.filter(slug=slug).first()  #used to remove duplicate value 
        context={'products':products,'category':category}
        return render(request,'store/product/index.html',context)
    else:
        messages.warning(request,'No seacrh category found')
        return redirect('collections')
        
def productview(request,prod_slug,id):
    if (Product.objects.filter(slug=prod_slug,status=0,id=id)):
        products=Product.objects.filter(slug=prod_slug,status=0,id=id).first()  #remove duplicate value 
        context={'products':products}
    else:
        messages.error(request,'No such product found')
        return redirect('collections')
    return render(request,'store/product/view.html',context)


def productlistAjax(request):
    products=Product.objects.filter(status=0).values_list('name',flat=True)
    product_list=list(products)
    return JsonResponse(product_list,safe=False)


def seacrhproduct(request):
    if request.method=='POST':
        seacrhproductterm=request.POST.get('productsearch')
        if seacrhproductterm=="":
             return redirect(request.META.get('HTTP_REFERER'))
        else:
            product=Product.objects.filter(name__contains=seacrhproductterm).first()

            if product:
                return redirect('collections/'+product.slug+'/'+str(product.id))
            else:
                messages.info(request,"No product found again your seacrh product")
                return redirect(request.META.get('HTTP_REFERER'))


    
    return redirect(request.META.get('HTTP_REFERER'))



def contact(request):
    return render(request,'store/inc/contact.html')

def contactadd(request):
    if request.method=="POST":
        name=request.POST['name']  #get the value from the form of insert form using the post method
        email=request.POST['email']
        subject=request.POST['subject']
        message=request.POST['message']

        newuser=Contact.objects.create(name=name,    
                                    email=email,
                                    subject=subject, 
                                    message=message       
                                    )
        messages.success(request,"Thanks for submitting your contact information!")
        return render(request, 'store/inc/contact.html')


def about(request):
    return render(request,'store/inc/about.html')

def module(requuest):
    return render(requuest,'store/elearn/module1.html')

def module2(request):
    return render(request,'store/elearn/module2.html')

def module3(request):
    return render(request,'store/elearn/module3.html')

def module4(request):
    return render(request,'store/elearn/module4.html')

def module5(request):
    return render(request,'store/elearn/module5.html')


def module6(request):
    return render(request,'store/elearn/module6.html')

    
    



