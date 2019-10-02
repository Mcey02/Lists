def threed(list)
    count3 = 0
    list.each do |number|
        if number == 3
            count3 += 1
        end
    end
    if count3 !=3
        return false
    end
    x = list.size - 1
    i = 0
    x.times do |number|
        if list[i] == 3
            if list[i] == list[i + 1]
                return false
            end
        end
        i = i + 1
    end
    return true
end

numbers = []


# puts threed(numbers)


def same_first_last(list)
    if list.size > 0 && list[0] == list[list.size - 1]
        return true
    end
    return false
end

# puts same_first_last(numbers)

def get_sandwich(string)
    breadtrue = false
    stringstart = 0
    stringend = 0
    (string.size - 4).times do |i|
        slice = string[i..i + 4]
        if slice == "bread"
            if breadtrue == true
                stringend = i - 1
            else
                stringstart = i + 5
                breadtrue = true
            end
        end
    end
    return string[stringstart..stringend]
end


# puts get_sandwich("jambreadjambreadjam")

def shift_left(list)
    x = list.size - 1
    i = 0
    value = list[0]
    x.times do |number|
        list[i] = list[i+1]
        i += 1
    end
    list[x] = value
    return list
end

numbs = [5, 5]

# puts shift_left(numbs)


def can_balance(list)
    firsthalf = []
    secondhalf = []
    (list.size - 1).times do |x|
        add1 = 0
        add2 = 0
        firsthalf = list[0, x]
        secondhalf = list[(x), (list.size - 1)]
        firsthalf.each do |num|
            add1 = add1 + num
        end
        secondhalf.each do |num1|
            add2 = add2 + num1
        end
        if add1 == add2
            return true
        end
    end
    return false
end

# puts can_balance(numbs)

def count_code(string)
    count = 0
    (string.size - 3).times do |i|
        slice = string[i..i + 3]
        slice[2] = "d"
        if slice == "code"
            count += 1
        end
    end
    return count
end

# puts count_code("codeknjlnbnbobnolbnpcdodecohennncoee")

def middle_way(list1, list2)
    list = []
    r = list1[(list1.size/2)]
    t = list2[(list2.size/2)]
    list.push(r)
    list.push(t)
    return list
end

numbs = [3, 5, 2, 56, 3]
values = [7, 3, 5, 54, 56, 3, 4]

# puts middle_way(numbs, values)

def either_2_4(list)
    i = 0
    status = false
    (list.size - 1).times do |numb|
        if (list[i] == 2 || list[i] == 4) && list[i + 1] == list[i]
            if status == true
                return false
            end
            status = true
        end
        i += 1
    end
    if status == true
        return true
    end
    return false
end

numbers = [2, 4, 4, 5, 6, 1, 2]

# puts either_2_4(numbers)

def max_span(list)
    i = 0
    first = 0
    last = 0
    size = 0
    list.each do |number|
        first = number
        list.each do |numb|
            if number == numb
                last = numb
            end
        end
        newlist = list[first..last]
        
        if size
            size = newlist.size

    end
end


def g_happy(string)
    i = 0
    string.size.times do |letter|
        if i == 0
            if string[i] == 0
                if string[i] != string[i + 1]
                    return false
                end
            end
        else
            if string[i] == "g"
                if string[i] == string[i - 1] || string[i] == string[i + 1]
                else
                    return false
                end
            end
        end
        if i == string.size - 1
            if string[i] == "g"
                if string[i] != string[i - 1]
                    return false
                end
            end
        end
        i += 1
    end
    return true
end

# puts g_happy("jhkhkhkjnjkbggnkjnjknjkgggnnlknln")