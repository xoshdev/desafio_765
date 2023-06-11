# Desafío N°765: Prueba - Introducción a la programación con Ruby

#----------------------------------------------------------------#

class Person # Person es la SUPERCLASE
    def initialize(first, last) # metodo constructor / atributos
    @first_name = first #atributo: nombre
    @last_name = last #atributo: apellido
    end

#-----------------------------------------------------------------#
    def talk
        #metodo talk
    end

    def introduce
        #metodo introduce
    end
end

#----Subclase Student ----------------------------------------------#

class Student < Person #aplicando Herencia a la subclase Student.

    def talk #metodo talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce #metodo introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."	
	end
end

#---- Subclase Teacher ----------------------------------------------#

class Teacher < Person #aplicando Herencia a la subclase Teacher
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce #metodo introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."	#aplicando interpolacion en la impresion
	end
end

#---- Subclase Parent ----------------------------------------------#

class Parent < Person #aplicando Herencia a la subclase Parent.
    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."	#aplicando interpolacion en la impresion
    end
end

#-------------------------------------------------------------------#

student = Student.new("Felipe", "Barría")
student.talk # Aquí es la clase de programación con Ruby?

teacher = Teacher.new("Israel", "Lucksic")
teacher.talk # Bienvenidos a la clase de programación con Ruby!

teacher = Teacher.new("Israel", "Lucksic")
teacher.introduce # Hola alumnos. Mi nombre es Israel Lucksic.

parent = Parent.new("Julia", "García")
parent.introduce # Hola. Soy uno de los apoderados. Mi nombre es Julia García.