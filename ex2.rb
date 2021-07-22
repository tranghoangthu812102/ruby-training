class Student
    attr_accessor :name, :scores
    def initialize(name, math, literature, english)
        @name = name
        @scores = { :toan => math, :van => literature, :anh => english, :avg => ((math + literature + english).to_f/3).round(1)}
    end
end

#max avg function
def max_avg_student(hash)
    max =0
    student = ""
    hash.each do |key, value|
        if value[:avg] > max
            student = key
        end
    end
    return student
end

# main function
student_hash = {}
print "Nhap so luong hoc sinh:"
number = gets.to_i
for i in (1..number)
    print "Nhap ten hoc sinh thu #{i}: "
    name = gets.chomp
    print "Nhap diem toan cua #{name}: "
    math_score = gets.to_i
    print "Nhap diem van cua #{name}: "
    literature_score = gets.to_i
    print "Nhap diem anh cua #{name}: "
    english_score = gets.to_i
    person = Student.new(name, math_score, literature_score, english_score)
    student_hash["#{person.name}"] = person.scores
end

puts student_hash
max_student = max_avg_student(student_hash)


puts "Diem trung binh cao nhat trong lop la: #{student_hash[max_student][:avg]} cua ban #{max_student}"
