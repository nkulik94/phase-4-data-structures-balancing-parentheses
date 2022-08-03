require_relative './stack'

def balancing_parentheses str
    stack = Stack.new
    str.chars.each do |char|
        stack.peek == '(' && char == ')' ? stack.pop : stack.push(char)
    end
    stack.size
end