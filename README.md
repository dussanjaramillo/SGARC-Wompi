# SGARC SISTEMA NACIONAL DE PRODUCCIÓN DE CENTROS DE FORMACIÓN 🏢

![Status](https://img.shields.io/badge/Estado-Productivo-green)
![Tech](https://img.shields.io/badge/Stack-ASP.NET_Core-512BD4?logo=.net&logoColor=white)
![Server](https://img.shields.io/badge/Server-IIS_8-0078D7?logo=windows-server&logoColor=white)
![OS](https://img.shields.io/badge/OS-Windows_Server_2016-0078D4?logo=windows&logoColor=white)
![DB](https://img.shields.io/badge/DB-SQL_Server_2016-CC2927?logo=microsoft-sql-server&logoColor=white)

## 📝 Descripción

SGARC Sistema Nacional de Producción de Centros de Formación es la plataforma institucional para la parametrización, gestión y control de la producción de los centros de producción a nivel regional, generación de facturación electrónica y recaudo de pagos.

---

## 🌐 Ambientes y Enlaces de Interés

| Recurso | Enlace | Estado / Acceso |
| :--- | :--- | :--- |
| **Producción** | [Acceder a SGARC PROD](https://sgarc.sena.edu.co/inicio.aspx) | ![Online](https://img.shields.io/badge/status-online-brightgreen) |
| **Preproducción** | [Acceder a SGARC PRE](http://pre-sgarc.sena.edu.co:8080/) | ![Online](https://img.shields.io/badge/status-suspended-orange) |
| **Soporte (GLPI)** | [Mesa de Servicio GLPI](https://miayudatic.sena.edu.co/public/khub/front/ticket.php) | Reporte de Incidencias |
| **Soporte (GLPI)** | [DSL Servicio GLPI](https://miayudatic.sena.edu.co/public/khub/front/software.form.php?id=64) | Reporte DSL |
| **Tablero de Tareas** | [GitLab Issues Board](../../boards) | Seguimiento Desarrollo |
| **Documentación Técnica** | [Wiki del Proyecto](../../wikis/home) | Detalle de Módulos y Arquitectura |

---

## 🖼️ Interfaz de Usuario

### Pantalla de Inicio de Sesión
A continuación se muestra la interfaz de acceso al sistema Certificados Empresariales.

<p align="center">
  <img src="https://miayudatic.sena.edu.co/public/khub/front/document.send.php?file=_pictures/9f/644addb7213454.95362518692a0cd75f29f.png" alt="Pantalla de Login SIREC" width="600px">
  <br>
  <em>Vista previa de la interfaz de autenticación (Ambiente Productivo).</em>
</p>

---

## 🛠 Ecosistema Tecnológico

### Servidor y Backend
* **Sistema Operativo:** Wndows Server 2016
* **Servidor Web:** IIS 8
* **Lenguaje:** C#
* **Framework:** ASP.NET

---

## ⚙️ Configuración e Instalación Local

### 1. Requisitos Previos


### 2. Configuración de Base de Datos


## 🌲 Flujo de Trabajo (Gitflow)

El equipo sigue estrictamente la metodología Gitflow:

1. Ramas Principales:
    * 🚀 main: Código productivo estable.
    * 🔖 release: Preparación para paso a producción.
    * 🏗️ develop: Integración de nuevas funcionalidades.
    * 🚑 hotfix: Reparaciones críticas en producción.

2. Correcciones: __Los errores encontrados en producción deben trabajarse en ramas hotfix/ y mezclarse tanto en main como en develop.__

3. Merge Requests (MR): __Todo cambio debe pasar por un proceso de revisión antes de integrarse a las ramas protegidas.__

4. Versionamiento: __Al completar un despliegue a producción, se debe generar un Tag con la versión reportada en el RFC correspondiente.__

## 👥 Responsables y Contacto

Para soporte técnico o definiciones de negocio:

📧 jilopezp@sena.edu.co

📧 jcdussan@sena.edu.co

© 2026 - SENA Dirección General.
Este software es de uso exclusivo institucional.