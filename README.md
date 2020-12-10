# **Péndulo Invertido (Matlab 2018a)**

**Integrantes:**  
Sergio Rodrigo Fernández Testa  
Fabricio Alejandro Jallaza Maldonado  
Daniel Arturo Bustillos Vila

**Docente:**  
Ing. Gabriel Rojas

## Modelo 3D

![Photoview360](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/PenduloInvertido.JPG)

## **Espacio de estados**

![State Space](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/StateSpace.png)

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

## **Fuzzy Logic Controller Rules**

### Reglas para el ángulo

|Condición                        |Respuesta         |
|---------------------------------|------------------|
| error==NB & derivada-error==NB | vel-motor=PB (1)|
| error==NB & derivada-error==NM | vel-motor=PB (1)|
| error==NB & derivada-error==NS | vel-motor=PB (1)|
| error==NB & derivada-error==ZE | vel-motor=PB (1)|
| error==NB & derivada-error==PS | vel-motor=PB (1)|
| error==NB & derivada-error==PM | vel-motor=PM (1)|
| error==NB & derivada-error==PB | vel-motor=ZE (1)|
| error==NM & derivada-error==NB | vel-motor=PB (1)|
| error==NM & derivada-error==NM | vel-motor=PB (1)|
| error==NM & derivada-error==NS | vel-motor=PB (1)|
| error==NM & derivada-error==ZE | vel-motor=PB (1)|
| error==NM & derivada-error==PS | vel-motor=PM (1)|
| error==NM & derivada-error==PM | vel-motor=ZE (1)|
| error==NM & derivada-error==PB | vel-motor=NM (1)|
| error==NS & derivada-error==NB | vel-motor=PB (1)|
| error==NS & derivada-error==NM | vel-motor=PB (1)|
| error==NS & derivada-error==NS | vel-motor=PB (1)|
| error==NS & derivada-error==ZE | vel-motor=PM (1)|
| error==NS & derivada-error==PS | vel-motor=ZE (1)|
| error==NS & derivada-error==PM | vel-motor=NM (1)|
| error==NS & derivada-error==PB | vel-motor=NB (1)|
| error==ZE & derivada-error==NB | vel-motor=PB (1)|
| error==ZE & derivada-error==NM | vel-motor=PB (1)|
| error==ZE & derivada-error==NS | vel-motor=PM (1)|
| error==ZE & derivada-error==ZE | vel-motor=ZE (1)|
| error==ZE & derivada-error==PS | vel-motor=NM (1)|
| error==ZE & derivada-error==PM | vel-motor=NB (1)|
| error==ZE & derivada-error==PB | vel-motor=NB (1)|
| error==PS & derivada-error==NB | vel-motor=PB (1)|
| error==PS & derivada-error==NM | vel-motor=PM (1)|
| error==PS & derivada-error==NS | vel-motor=ZE (1)|
| error==PS & derivada-error==ZE | vel-motor=NM (1)|
| error==PS & derivada-error==PS | vel-motor=NB (1)|
| error==PS & derivada-error==PM | vel-motor=NB (1)|
| error==PS & derivada-error==PB | vel-motor=NB (1)|
| error==PM & derivada-error==NB | vel-motor=PM (1)|
| error==PM & derivada-error==NM | vel-motor=ZE (1)|
| error==PM & derivada-error==NS | vel-motor=NM (1)|
| error==PM & derivada-error==ZE | vel-motor=NB (1)|
| error==PM & derivada-error==PS | vel-motor=NB (1)|
| error==PM & derivada-error==PM | vel-motor=NB (1)|
| error==PM & derivada-error==PB | vel-motor=NB (1)|
| error==PB & derivada-error==NB | vel-motor=ZE (1)|
| error==PB & derivada-error==NM | vel-motor=NM (1)|
| error==PB & derivada-error==NS | vel-motor=NB (1)|
| error==PB & derivada-error==ZE | vel-motor=NB (1)|
| error==PB & derivada-error==PS | vel-motor=NB (1)|
| error==PB & derivada-error==PM | vel-motor=NB (1)|
| error==PB & derivada-error==PB | vel-motor=NB (1)|

### Reglas del desplazamiento lineal

|Condición                       |Respuesta         |
|--------------------------------|------------------|
|error==NB & derivada-error==NB | vel-motor=PB (1)|
|error==NB & derivada-error==NM | vel-motor=PB (1)|
|error==NB & derivada-error==NS | vel-motor=PB (1)|
|error==NB & derivada-error==ZE | vel-motor=PB (1)|
|error==NB & derivada-error==PS | vel-motor=PB (1)|
|error==NB & derivada-error==PM | vel-motor=PM (1)|
|error==NB & derivada-error==PB | vel-motor=ZE (1)|
|error==NM & derivada-error==NB | vel-motor=PB (1)|
|error==NM & derivada-error==NM | vel-motor=PB (1)|
|error==NM & derivada-error==NS | vel-motor=PB (1)|
|error==NM & derivada-error==ZE | vel-motor=PB (1)|
|error==NM & derivada-error==PS | vel-motor=PM (1)|
|error==NM & derivada-error==PM | vel-motor=ZE (1)|
|error==NM & derivada-error==PB | vel-motor=NM (1)|
|error==NS & derivada-error==NB | vel-motor=PB (1)|
|error==NS & derivada-error==NM | vel-motor=PB (1)|
|error==NS & derivada-error==NS | vel-motor=PB (1)|
|error==NS & derivada-error==ZE | vel-motor=PM (1)|
|error==NS & derivada-error==PS | vel-motor=ZE (1)|
|error==NS & derivada-error==PM | vel-motor=NM (1)|
|error==NS & derivada-error==PB | vel-motor=NB (1)|
|error==ZE & derivada-error==NB | vel-motor=PB (1)|
|error==ZE & derivada-error==NM | vel-motor=PB (1)|
|error==ZE & derivada-error==NS | vel-motor=PM (1)|
|error==ZE & derivada-error==ZE | vel-motor=ZE (1)|
|error==ZE & derivada-error==PS | vel-motor=NM (1)|
|error==ZE & derivada-error==PM | vel-motor=NB (1)|
|error==ZE & derivada-error==PB | vel-motor=NB (1)|
|error==PS & derivada-error==NB | vel-motor=PB (1)|
|error==PS & derivada-error==NM | vel-motor=PM (1)|
|error==PS & derivada-error==NS | vel-motor=ZE (1)|
|error==PS & derivada-error==ZE | vel-motor=NM (1)|
|error==PS & derivada-error==PS | vel-motor=NB (1)|
|error==PS & derivada-error==PM | vel-motor=NB (1)|
|error==PS & derivada-error==PB | vel-motor=NB (1)|
|error==PM & derivada-error==NB | vel-motor=PM (1)|
|error==PM & derivada-error==NM | vel-motor=ZE (1)|
|error==PM & derivada-error==NS | vel-motor=NM (1)|
|error==PM & derivada-error==ZE | vel-motor=NB (1)|
|error==PM & derivada-error==PS | vel-motor=NB (1)|
|error==PM & derivada-error==PM | vel-motor=NB (1)|
|error==PM & derivada-error==PB | vel-motor=NB (1)|
|error==PB & derivada-error==NB | vel-motor=ZE (1)|
|error==PB & derivada-error==NM | vel-motor=NM (1)|
|error==PB & derivada-error==NS | vel-motor=NB (1)|
|error==PB & derivada-error==ZE | vel-motor=NB (1)|
|error==PB & derivada-error==PS | vel-motor=NB (1)|
|error==PB & derivada-error==PM | vel-motor=NB (1)|
|error==PB & derivada-error==PB | vel-motor=NB (1)|

## **Gráficas resultantes**

### **PID**

![Grafica_PID](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_PID.jpg)

### **LQR**

![Grafica_LQR](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_LQR.jpg)

### **Fuzzy Logic Controller**

![Grafica_FC](https://github.com/Rod5919/Pendulo-invertido/blob/main/assets/Grafica_FC.jpg)

## **Datos de respuesta ante un step**

### **Ángulo**

|Dato         |PID    |LQR       |FLC       |
|-------------|:-----:|:--------:|:--------:|
|RiseTime     | 0.0067|0.2708    |0.0861    |
|SettlingTime | 0.0118|7.4297    |3.9158    |
|SettlingMin  | 2.8359|-0.0712   |-0.0599   |
|SettlingMax  | 3.1449|0.0465    |0.0332    |
|Overshoot    | 0.1051|1.7434e+06|1.0349e+05|
|Undershoot   |      0|1.1851e+06|5.9227e+04|
|Peak         | 3.1449|0.1047    |0.1047    |
|PeakTime     | 0.0213|0         |0         |

### **Desplazamiento**

|Dato         |PID    |LQR     |FLC       |
|-------------|:-----:|:------:|:--------:|
|RiseTime     | 0.4978|0.1774  |0.8611    |
|SettlingTime | 6.2696|11.2368 |3.5633    |
|SettlingMin  | 0.9107|0.2911  |-0.0283   |
|SettlingMax  | 1.3234|0.4168  |0.0247    |
|Overshoot    |32.3401|38.8452 |4.7159e+04|
|Undershoot   |      0|0       |5.2974e+05|
|Peak         | 1.3234|0.4168  |0.3176    |
|PeakTime     | 1.3692|0.7807  |0.2670    |
