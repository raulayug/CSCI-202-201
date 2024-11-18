-- Replicating object-oriented programming in lua
-- reference: https://www.lua.org/pil/16.1.html

-- defining the student class
local Student = {}
Student.__index = Student

function Student:new(name, age, course)
    local obj = {
        name = name or "Unknown",
        age = age or 0,
        course = course or "None"
    }
    setmetatable(obj, Student)
    return obj
end

function Student.print(self) -- can also use "." in place of ":", need to declare self
    print("Name:", self.name)
    print("Age:", self.age)
    print("Course:", self.course)
end

function Student:setCourse(newCourse)
    self.course = newCourse
end

-- create student objects
local student1 = Student.new(Student, "Rau", 22, "Computer Science")
local student2 = Student:new("Uar", 21, "Engineering") -- can also use ":", no need to declare self

-- print student details
student1:print()
print("---")
student2.print(student2)
print()
print()

-- change course of student1
print("Setting course of student1 to Physics")
student1:setCourse("Physics")
student1:print()

