for i in range(0,6):
    n=int(input('Enter a numper: '))
    if n%2==1:
        print('nice')
    elif n%2==0:
        print('nice')

    else:
        print('wrong data')
        n=int(input(' please re-enter'))

a=0
for q in range (0,len(n)):
    if n[a]<n[a+1]:
        sorted(a,a+1)
        a+=1
print(a)
print('the minimum valeu is ',n[0])
print('the maximum valeu is ',n[7])

print('the avg is: ',(n[0]+n[1]+n[2]+n[3]+n[4]+n[5]+n[6])/len(n))



print(n[0,6])
print(' if you want to re-run, click play in your compiler :D')



