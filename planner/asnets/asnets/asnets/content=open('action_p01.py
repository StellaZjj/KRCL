content=open('action_p01.txt')
with open('obt.dat','w') as f:
    for line in content:
        f.write(line.replace('Action ', ''))
