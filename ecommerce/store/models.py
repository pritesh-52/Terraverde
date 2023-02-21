from cgitb import text
from distutils.command.upload import upload
from email import message
from email.mime import image
import imp
from pyexpat import model
from re import A, S
from turtle import mode
from django.db import models
from django.contrib.auth.models import User
from datetime import datetime 



class Category(models.Model):
    slug=models.CharField(max_length=150,null=False,blank=False)  #name of the category define
    name=models.CharField(max_length=150,null=False,blank=False)  #name of the category define
    image=models.ImageField(upload_to="category/",null=True,blank=True)  #image upload in the database
    description=models.TextField(max_length=500,null=False,blank=False)  #descriiption of the database
    status=models.BooleanField(default=False,help_text="0-default,1-Hideen") #status of the category
    trending=models.BooleanField(default=False,help_text="0-default,1-Trending")  #trending category
    meta_title=models.CharField(max_length=150,null=False,blank=False)  #meta title
    meta_keywords=models.CharField(max_length=150,null=False,blank=False) #meta keywords
    meta_description=models.TextField(max_length=500,null=False,blank=False)  #meta descrption
    created_at=models.DateTimeField(auto_now_add=True) #curent datetime display

    def __str__(self):
        return self.slug

class Product(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)  #create the forigen key
    slug=models.CharField(max_length=150,null=False,blank=False)  #used to product slug
    name=models.CharField(max_length=150,null=False,blank=False)   
    product_image=models.ImageField(upload_to="product/",null=True,blank=True)  #image store
    small_description=models.CharField(max_length=250,null=False,blank=False)
    quantity=models.IntegerField(null=False,blank=False)
    description=models.TextField(max_length=1000,null=False,blank=False)
    original_price=models.FloatField(null=False,blank=False)    #null db releted #blank validation relate
    selling_price=models.FloatField(null=False,blank=False)
    status=models.BooleanField(default=False,help_text="0-default,1-Hideen")
    trending=models.BooleanField(default=False,help_text="0-default,1-Trending")
    tag=models.CharField(max_length=150,null=False,blank=False)
    meta_title=models.CharField(max_length=150,null=False,blank=False)
    meta_keywords=models.CharField(max_length=150,null=False,blank=False)
    meta_description=models.TextField(max_length=500,null=False,blank=False)
    created_at=models.DateTimeField(auto_now_add=True)


    def __str__(self):
         return f"{self.name}, {self.slug}"

class Cart(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    product=models.ForeignKey(Product, on_delete=models.CASCADE)
    product_qty=models.IntegerField(null=False,blank=False)
    created_at=models.DateTimeField(auto_now_add=True)



    

class wishlist(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    product=models.ForeignKey(Product,on_delete=models.CASCADE)
    created_at=models.DateTimeField(auto_now_add=True)


class Order(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    fname=models.CharField(max_length=150,null=False)
    lname=models.CharField(max_length=150,null=False)
    email=models.CharField(max_length=150,null=False)
    phone=models.CharField(max_length=150,null=False)
    address=models.TextField(null=False)
    city=models.CharField(max_length=150,null=False)
    state=models.CharField(max_length=150,null=False)
    country=models.CharField(max_length=150,null=False)
    pincode=models.CharField(max_length=150,null=False)
    total_price=models.FloatField(null=False)
    payment_mode=models.CharField(max_length=150,null=False)
    payment_id=models.CharField(max_length=250,null=True)
    orderstatuses = (
        ('Pending','Pending'),
        ('Out For Shipping','Out For Shipping'),
        ('Completed','Completed'),
        )
    status=models.CharField(max_length=150,choices=orderstatuses,default='Pending')
    message=models.TextField(null=True)
    tracking_no=models.CharField(max_length=150,null=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now=True)


    def __str__(self):
        return '{}- {}'.format(self.id,self.tracking_no)

    

class OrderItem(models.Model):
    order=models.ForeignKey(Order,on_delete=models.CASCADE)
    product=models.ForeignKey(Product,on_delete=models.CASCADE)
    price=models.FloatField(null=False)
    quantity=models.IntegerField(null=False)
    
    def __str__(self):
        return '{} {}'.format(self.order.id,self.order.tracking_no)
    

class Profile(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    phone=models.CharField(max_length=150,null=False)
    address=models.TextField(null=False)
    city=models.CharField(max_length=150,null=False)
    state=models.CharField(max_length=150,null=False)
    country=models.CharField(max_length=150,null=False)
    pincode=models.CharField(max_length=150,null=False)
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.user.username


class Contact(models.Model):
    name=models.CharField(max_length=30,null=False,blank=False)  
    email=models.EmailField(max_length=150,null=False,blank=False)
    subject=models.CharField(max_length=150,null=False,blank=False)  
    message=models.TextField(max_length=500,null=False,blank=False)

    def __str__(self):
        return "{} -- {}".format(self.name, self.email)
    


    
    

# Create your models here.
