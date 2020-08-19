from django.urls import path
from . import views


urlpatterns = [
    path('', views.home_page, name='home'),
    path('register/', views.register_page, name='register'),
    path('login/', views.login_page, name='login'),
    path('logout/', views.logout_page, name='logout'),
    path('admin_panel/', views.admin_panel_page, name='admin_panel'),
    path('admin_upload/', views.admin_upload_page, name='admin_upload'),
    path('admin_upload/<int:id>/', views.admin_update_page, name='admin_update'),
    path('admin_panel/delete/<int:id>/', views.admin_delete, name='admin_delete'),
    path('view_details/(?P<pk>\d+)/', views.view_details_page, name='view_details'),
    path('bike_page/', views.bike_page, name='bike_page'),
    path('bus_page/', views.bus_page, name='bus_page'),
    path('car_page/', views.car_page, name='car_page'),
    path('truck_page/', views.truck_page, name='truck_page'),
    path('others_page/', views.others_page, name='others_page'),
    path('bugatti/', views.bugatti_page, name='bugatti'),
    path('lamborghini/', views.lamborghini_page, name='lamborghini'),
    path('audi/', views.audipage, name='audi'),
    path('astonmartin/', views.aston_martin_page, name='astonmartin'),
    path('bentley/', views.bentley_page, name='bentley'),
    path('bmw/', views.bmw_page, name='bmw'),
    path('cadillac/', views.cadillac_page, name='cadillac'),
    path('chevrolet/', views.chevrolet_page, name='chevrolet'),
    path('ferrari/', views.ferrari_page, name='ferrari'),
    path('ford/', views.ford_page, name='ford'),
    path('honda/', views.honda_page, name='honda'),
    path('hyundai/', views.hyundai_page, name='hyundai'),
    path('jaguar/', views.jaguar_page, name='jaguar'),
    path('jeep/', views.jeep_page, name='jeep'),
    path('landrover/', views.land_rover_page, name='landrover'),
    path('lexus/', views.lexus_page, name='lexus'),
    path('maclaren/', views.maclaren_page, name='maclaren'),
    path('maserati/', views.maserati_page, name='maserati'),
    path('mazda/', views.mazda_page, name='mazda'),
    path('mercedes/', views.mercedes_page, name='mercedes'),
    path('nissan/', views.nissan_page, name='nissan'),
    path('porsche/', views.porsche_page, name='porsche'),
    path('rollsroyce/', views.rollsroyce_page, name='rollsroyce'),
    path('toyota/', views.toyota_page, name='toyota'),
]




