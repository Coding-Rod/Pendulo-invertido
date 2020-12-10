# **Péndulo Invertido (Matlab 2018a)**

**Integrantes:**  
Sergio Rodrigo Fernández Testa  
Fabricio Alejandro Jallaza Maldonado  
Daniel Arturo Bustillos Vila

**Docente:**  
Ing. Gabriel Rojas

## **Espacio de estados**

![State Space](assets\StateSpace.png)

## **Controladores implementados**

1. PID
2. LQR
3. FC

## **Ganancias de cada controlador**

### **PID**

~~~matlab
kp = -46.1621
ki= -200.233
kd= -4.03087
~~~

### **LQR**

~~~matlab
K1 = [56.0344 19.9631 -14.8362 1.88008]
K2 = [2.23607 2.11568 -4.07205 -0.59575]
K3 = [56.0344 19.9631 -14.8362 1.88008]
~~~

## **Fuzzy Controller Rules**

### Reglas para el ángulo

|Condición                        |Respuesta         |
|---------------------------------|------------------|
| "error==NB & derivada-error==NB | vel-motor=PB (1)"|
| "error==NB & derivada-error==NM | vel-motor=PB (1)"|
| "error==NB & derivada-error==NS | vel-motor=PB (1)"|
| "error==NB & derivada-error==ZE | vel-motor=PB (1)"|
| "error==NB & derivada-error==PS | vel-motor=PB (1)"|
| "error==NB & derivada-error==PM | vel-motor=PM (1)"|
| "error==NB & derivada-error==PB | vel-motor=ZE (1)"|
| "error==NM & derivada-error==NB | vel-motor=PB (1)"|
| "error==NM & derivada-error==NM | vel-motor=PB (1)"|
| "error==NM & derivada-error==NS | vel-motor=PB (1)"|
| "error==NM & derivada-error==ZE | vel-motor=PB (1)"|
| "error==NM & derivada-error==PS | vel-motor=PM (1)"|
| "error==NM & derivada-error==PM | vel-motor=ZE (1)"|
| "error==NM & derivada-error==PB | vel-motor=NM (1)"|
| "error==NS & derivada-error==NB | vel-motor=PB (1)"|
| "error==NS & derivada-error==NM | vel-motor=PB (1)"|
| "error==NS & derivada-error==NS | vel-motor=PB (1)"|
| "error==NS & derivada-error==ZE | vel-motor=PM (1)"|
| "error==NS & derivada-error==PS | vel-motor=ZE (1)"|
| "error==NS & derivada-error==PM | vel-motor=NM (1)"|
| "error==NS & derivada-error==PB | vel-motor=NB (1)"|
| "error==ZE & derivada-error==NB | vel-motor=PB (1)"|
| "error==ZE & derivada-error==NM | vel-motor=PB (1)"|
| "error==ZE & derivada-error==NS | vel-motor=PM (1)"|
| "error==ZE & derivada-error==ZE | vel-motor=ZE (1)"|
| "error==ZE & derivada-error==PS | vel-motor=NM (1)"|
| "error==ZE & derivada-error==PM | vel-motor=NB (1)"|
| "error==ZE & derivada-error==PB | vel-motor=NB (1)"|
| "error==PS & derivada-error==NB | vel-motor=PB (1)"|
| "error==PS & derivada-error==NM | vel-motor=PM (1)"|
| "error==PS & derivada-error==NS | vel-motor=ZE (1)"|
| "error==PS & derivada-error==ZE | vel-motor=NM (1)"|
| "error==PS & derivada-error==PS | vel-motor=NB (1)"|
| "error==PS & derivada-error==PM | vel-motor=NB (1)"|
| "error==PS & derivada-error==PB | vel-motor=NB (1)"|
| "error==PM & derivada-error==NB | vel-motor=PM (1)"|
| "error==PM & derivada-error==NM | vel-motor=ZE (1)"|
| "error==PM & derivada-error==NS | vel-motor=NM (1)"|
| "error==PM & derivada-error==ZE | vel-motor=NB (1)"|
| "error==PM & derivada-error==PS | vel-motor=NB (1)"|
| "error==PM & derivada-error==PM | vel-motor=NB (1)"|
| "error==PM & derivada-error==PB | vel-motor=NB (1)"|
| "error==PB & derivada-error==NB | vel-motor=ZE (1)"|
| "error==PB & derivada-error==NM | vel-motor=NM (1)"|
| "error==PB & derivada-error==NS | vel-motor=NB (1)"|
| "error==PB & derivada-error==ZE | vel-motor=NB (1)"|
| "error==PB & derivada-error==PS | vel-motor=NB (1)"|
| "error==PB & derivada-error==PM | vel-motor=NB (1)"|
| "error==PB & derivada-error==PB | vel-motor=NB (1)"|

### Reglas del desplazamiento lineal

|Condición                       |Respuesta         |
|--------------------------------|------------------|
|"error==NB & derivada-error==NB | vel-motor=PB (1)"|
|"error==NB & derivada-error==NM | vel-motor=PB (1)"|
|"error==NB & derivada-error==NS | vel-motor=PB (1)"|
|"error==NB & derivada-error==ZE | vel-motor=PB (1)"|
|"error==NB & derivada-error==PS | vel-motor=PB (1)"|
|"error==NB & derivada-error==PM | vel-motor=PM (1)"|
|"error==NB & derivada-error==PB | vel-motor=ZE (1)"|
|"error==NM & derivada-error==NB | vel-motor=PB (1)"|
|"error==NM & derivada-error==NM | vel-motor=PB (1)"|
|"error==NM & derivada-error==NS | vel-motor=PB (1)"|
|"error==NM & derivada-error==ZE | vel-motor=PB (1)"|
|"error==NM & derivada-error==PS | vel-motor=PM (1)"|
|"error==NM & derivada-error==PM | vel-motor=ZE (1)"|
|"error==NM & derivada-error==PB | vel-motor=NM (1)"|
|"error==NS & derivada-error==NB | vel-motor=PB (1)"|
|"error==NS & derivada-error==NM | vel-motor=PB (1)"|
|"error==NS & derivada-error==NS | vel-motor=PB (1)"|
|"error==NS & derivada-error==ZE | vel-motor=PM (1)"|
|"error==NS & derivada-error==PS | vel-motor=ZE (1)"|
|"error==NS & derivada-error==PM | vel-motor=NM (1)"|
|"error==NS & derivada-error==PB | vel-motor=NB (1)"|
|"error==ZE & derivada-error==NB | vel-motor=PB (1)"|
|"error==ZE & derivada-error==NM | vel-motor=PB (1)"|
|"error==ZE & derivada-error==NS | vel-motor=PM (1)"|
|"error==ZE & derivada-error==ZE | vel-motor=ZE (1)"|
|"error==ZE & derivada-error==PS | vel-motor=NM (1)"|
|"error==ZE & derivada-error==PM | vel-motor=NB (1)"|
|"error==ZE & derivada-error==PB | vel-motor=NB (1)"|
|"error==PS & derivada-error==NB | vel-motor=PB (1)"|
|"error==PS & derivada-error==NM | vel-motor=PM (1)"|
|"error==PS & derivada-error==NS | vel-motor=ZE (1)"|
|"error==PS & derivada-error==ZE | vel-motor=NM (1)"|
|"error==PS & derivada-error==PS | vel-motor=NB (1)"|
|"error==PS & derivada-error==PM | vel-motor=NB (1)"|
|"error==PS & derivada-error==PB | vel-motor=NB (1)"|
|"error==PM & derivada-error==NB | vel-motor=PM (1)"|
|"error==PM & derivada-error==NM | vel-motor=ZE (1)"|
|"error==PM & derivada-error==NS | vel-motor=NM (1)"|
|"error==PM & derivada-error==ZE | vel-motor=NB (1)"|
|"error==PM & derivada-error==PS | vel-motor=NB (1)"|
|"error==PM & derivada-error==PM | vel-motor=NB (1)"|
|"error==PM & derivada-error==PB | vel-motor=NB (1)"|
|"error==PB & derivada-error==NB | vel-motor=ZE (1)"|
|"error==PB & derivada-error==NM | vel-motor=NM (1)"|
|"error==PB & derivada-error==NS | vel-motor=NB (1)"|
|"error==PB & derivada-error==ZE | vel-motor=NB (1)"|
|"error==PB & derivada-error==PS | vel-motor=NB (1)"|
|"error==PB & derivada-error==PM | vel-motor=NB (1)"|
|"error==PB & derivada-error==PB | vel-motor=NB (1)"|
## **Gráficas resultantes**

### **PID**

imagen

### **LQR**

imagen

### **LQG**

imagen

## **Datos de respuesta ante un step**

### **PID**

~~~matlab

~~~

### **LQR**

~~~matlab

~~~

### **FC**

~~~matlab

~~~
