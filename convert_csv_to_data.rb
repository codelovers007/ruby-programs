# 1) . Write a function convert_to_csv to get below input and return expected output
# input:  convert_to_csv("USA CA 20181204 \nUSATX20181205\nUSAIL20191205", 3, 2, 8)


# output: [[“USA”, “CA”, “20181204”], [“USA”,”TX”,”20181205”], [“USA”,”IL”,”20191205”]]



def convert_to_csv(str, size_1, size_2, size_3)
    titles = str.split("\n")
    initial_index = 0

    i = 0
    data = []

    while i < titles.size
        chars = titles[i]

        a =  initial_index + size_1
        name = chars[initial_index..a-1]
        
        b = a + size_2
        shotr_name = chars[a..b-1]
    
        c = b + size_3
        stamp = chars[b..c-1]

        data << [name, shotr_name, stamp]
        i += 1
    end
    data
end


