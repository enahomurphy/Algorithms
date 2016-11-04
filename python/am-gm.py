# You are required to check if the array passed as an argument is arithmetic, geometric,
# neither arithmetic nor geometric in progression or if the array is empty.
# 
# For arithmetic progressions, return Arithmetic
# For geometric progressions, return Geometric
# For neither of the above, return -1
# For an empty array, return 0

def aritGeo(arr):
    
    count = 0
    ans = ''
    lenght = len(arr)
    i = 0
    if lenght == 0: return 0

    ari = arr[1] - arr[0]
    geo = arr[1] / arr[0]
    
    while count <= lenght:
        # print count
        current = count + 1
        if arr[count] == arr[-1]:
            break
        
        if arr[current] - arr[i] == 6:
            ans = "Arithmetic"
            print "ari"
            
        elif (arr[current] / arr[i]) == 3:
            ans =  "Geometric"
            print "geo"
        else:
            ans = -1
        pos = count + 1
        if arr[count] == arr[-1]: break

        if (arr[pos] - arr[count]) == ari: ans = "Arithmetic"
        elif (arr[pos] / arr[count]) == geo:  ans =  "Geometric"
        else: ans = -1
        count +=1
    return ans
        
    
arithmetic = [5, 11, 17, 23, 29, 35, 41]
geometric = [2, 6, 18, 54, 162]


print arithmetic[1] - arithmetic[0]

print aritGeo(arithmetic)
    
print aritGeo(geometric)