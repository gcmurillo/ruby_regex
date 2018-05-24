
email_regex = "\A[a-z]+\w*(.?\w*)@\b(fiec.|fmcp.)?\bespol.edu.ec$"
email = "geanmuri@espol.edu.ec"
m = email.match(/\A[a-z]+\w*(.?\w*)@\b(fiec.|fmcp.)?\bespol.edu.ec$/)


def email_evaluation(email)
    m = email.match(/\A[a-z]+\w*(.?\w*)@\b(fiec.|fmcp.)?\bespol.edu.ec$/)[0]
    return m == email ? true : false
rescue
    return false
end

puts email_evaluation('geanmur..i@espol.edu.ec')