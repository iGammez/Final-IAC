Documentación del Repositorio Final-IAC

Descripción General
Este repositorio contiene una solución de Infraestructura como Código (IaC) para desplegar una aplicación usando Terraform y Ansible. Incluye todos los archivos y playbooks necesarios para automatizar el proceso de despliegue.

Arquitectura
La arquitectura consiste en los siguientes componentes:

1.Terraform: Provisión de infraestructura.

2.Ansible: Gestión de configuración y despliegue de aplicaciones.

Estructura de Archivos

main.tf: Archivo de configuración de Terraform.

playbooks/: Contiene los playbooks de Ansible.

.gitignore: Especifica los archivos a ignorar en el repositorio.


Prerrequisitos

Terraform: Instalar desde Sitio Oficial de Terraform.

Ansible: Instalar usando pip install ansible o consultar la Guía de Instalación de Ansible.

AWS CLI: Configurar AWS CLI con las credenciales necesarias.

Pasos para el Despliegue

Clonar el Repositorio:  git clone https://github.com/iGammez/Final-IAC.git

cd Final-IAC

Inicializar Terraform:



terraform init


Planificar y Aplicar la Configuración de Terraform:



terraform plan

terraform apply

Ejecutar los Playbooks de Ansible:

Navegar al directorio playbooks y ejecutar el playbook:





cd playbooks
ansible-playbook -i hosts main.yml
Notas
Asegurarse de que las credenciales de AWS estén configuradas correctamente antes de ejecutar los comandos de Terraform.
Los playbooks de Ansible asumen acceso SSH a las instancias provisionadas
