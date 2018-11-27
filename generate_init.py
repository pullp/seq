mem_name = 'regs'
reg_size = 32
reg_count = 32

mem_file = './data.mem'

lines = open(mem_file, 'r').read().split()
line_count = len(lines)

if(line_count != reg_count):
    print('padding zero')

code = '\tinitial\n\t\tbegin\n'


for i in range(0, reg_count):
    code += '\t'*3 + mem_name+'[%d]'%i + ' <= %d\'b'%reg_size +\
         (lines[i].rjust(reg_size, '0') if i<line_count else '0'*reg_size) + ';\n'

code += '\t\tend'

print code