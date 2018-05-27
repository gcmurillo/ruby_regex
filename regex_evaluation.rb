
class Evaluator
    
    def email_evaluation(email)
        """
        Evaluar email donde:
        a) Su usuario inicia sólo con letras.
        b) Su usuario solo puede contener letras en minúscula y números.
        c) Su usuario puede tener puntos y o guiones, pero no de forma continua (…).
        d) El dominio debe ser espol.edu.ec. Sin embargo, también podría aceptar el subdominio
        de facultades: fiec.espol.edu.ec, fimcp.espol.edu.ec
        e) Solo puede tener un @
        """

        match = email.match(/\A[a-z]+\w*(.?\w*)@\b(fiec.|fmcp.)?\bespol.edu.ec$/)[0]
        return match == email ? true : false
    rescue
        return false
    end

    def APA_evaluation(reference)
        """
        Evaluar referencias con formato APA
        """
        match = reference.match(/[a-zA-Z-]*,\s[A-Z].\s\((\d*|s.f.)\).\s[^,]*,\s[\d\w\s\(\)ñ]*(,\s(\d*-\d*))?.?:?\s[\w\s]*:?\s?[\W\w]*.?$/)[0]
        return match == reference ? true : false
    rescue
        return false
    end
end

evaluator = Evaluator.new()

puts evaluator.email_evaluation('geanmur..i@espol.edu.ec')
puts evaluator.APA_evaluation("Gallegos-Duarte, M. (2010). Alteraciones neuroeléctricas en el estrabismo. Cirugía y Cirujanos, 78 (3), 215-220. Recuperado de: http://redalyc.uaemex.mx/redalyc/pdf/662/66219081004.pdf")