
# Crear una función en RUBY que reciba una cadena y retorne un booleano si la cadena
# corresponde a la estructura de un correo con dominio ESPOL sabiendo que un correo de la
# institución tiene las siguientes características:
# a) Su usuario inicia sólo con letras.
# b) Su usuario solo puede contener letras en minúscula y números.
# c) Su usuario puede tener puntos y o guiones, pero no de forma continua (…).
# d) El dominio debe ser espol.edu.ec. Sin embargo, también podría aceptar el subdominio
# de facultades: fiec.espol.edu.ec, fimcp.espol.edu.ec
# e) Solo puede tener un @

def email_evaluation(email)
    m = email.match(/\A[a-z]+\w*(.?\w*)@\b(fiec.|fmcp.)?\bespol.edu.ec$/)[0]
    return m == email ? true : false
rescue
    return false
end

puts email_evaluation('geanmur..i@espol.edu.ec')