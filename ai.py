from time import time
from mpmath import factorial,sqrt,floor
from queue import Queue

class Node:
    ID_COUNTER = 0

    def __init__(self, value, operation = None):
        self.id = self.ID_COUNTER
        self.value = value
        self.operation = operation
        Node.ID_COUNTER += 1

    def __str__(self) -> str:
        return f"(Id:{self.id}, Value: {self.value})"


    def isEqual(self, value):
        return self.value == value    
    
    def isSame(self, node):
        return self == node

    def expand(self):
        children = list()
        floor_value = floor(self.value)
        if self.value - floor_value == 0:
            #if is integer
            children.append(Node(float(factorial(self.value)), 'factorial'))
        else:
            children.append(Node(floor_value,'floor'))
        children.append(Node(float(sqrt(self.value)),'square_root'))
        return children

class Tree:
    def __init__(self, initial_value, target_value):
        self.tree = dict()
        self.initial_value = initial_value
        self.target_value = target_value
        self.target_node_id= -1
        self.root = Node(self.initial_value)
        self.tree[self.root.id] = list()
    
    def findNode(self, id):
        for parent in self.tree.keys():
            tmp=[child.id for child in self.tree[parent]]
            try:
                index = tmp.index(id)
                return self.tree[parent][index]
            except:
                continue

    def findParent(self, child_id):
        for parent in self.tree.keys():
           tmp=[child.id for child in self.tree[parent]]
           if child_id in tmp:
               return parent
        return None
        
    def printPath(self):
        operationList = list()
        current = self.target_node_id
        while current!=self.root.id:
            current_node = self.findNode(current)
            operationList.append(current_node.operation)
            current = self.findParent(current)
        print('\n'.join(operationList[::-1]))
    
    def getChildren(self, parent_node):
        return self.tree[parent_node.id]

    def addChildren(self, parent_node):
        self.tree[parent_node.id] = parent_node.expand()

    def isGoal(self, node):
        if node.isEqual(self.target_value):
            self.target_node_id = node.id
            return True
        return False

def BFS(T, start_time):
    node = T.root
    if T.isGoal(node):
        return node
    frontier = Queue(-1)
    frontier.put(node)
    accessed = [node.value] 
    while not frontier.empty():
        current_node = frontier.get()
        if current_node:
            T.addChildren(current_node)
            for child_node in T.getChildren(current_node):
                if T.isGoal(child_node):
                    return child_node
                if child_node.value not in accessed:
                    accessed.append(child_node.value)
                    frontier.put(child_node)
        if time() - start_time >= TIME_LIMIT:
            break
    return None


def DLS(T, current_node, target, limit, start_time):
    if limit <= 0:
        return None
    if T.isGoal(current_node):
        return current_node
    T.addChildren(current_node)
    for child_node in T.getChildren(current_node):
        node = DLS(T, child_node, target, limit-1, start_time)
        if node:
            return node
        if time() - start_time >= TIME_LIMIT:
            break
    return None

def IDS(T, start_time):
    current_limit = 1
    while True:
        node = DLS(T, T.root, T.target_value, current_limit, start_time)
        if node:
            return node
        if time() - start_time >= TIME_LIMIT:
            break
        current_limit += 1
    return None

def user_input():
    algorithm = input ("Choose an algorithm :\n 1.BFS \n 2.IDS\n")
    while True:
        print('\n')
        if algorithm=="1" or algorithm=="2":
            limit = input("Give the calculation limit:\n")
            while True:
                print('\n')
                try:
                    limit = int(limit)
                    if limit >= 1:
                        break
                    else:
                        raise Exception("Wrong input")
                except:
                    limit = input("Give valid number\n")

            return algorithm, limit
        else:
            algorithm=input ("Give valid number:\n")
    

def main ():
    algorithm, limit = user_input()
    for i in range(1, limit+1):
        T=Tree(4, i)
        result = None
        start_time = time()
        if algorithm=="1":
            result = BFS(T, start_time)
        else:   
            result = IDS(T, start_time)
        end_time = time()
        print(f"\nResult for target = {i}\n")
        if result:
            T.printPath()
            print(f"\nResult found in {end_time-start_time} seconds\n")
        elif end_time - start_time >= TIME_LIMIT:
            print(f"Time limit of {TIME_LIMIT} seconds\n")
        else:
            print("No solution found...\n")

TIME_LIMIT = 30

if __name__=="__main__":
    main()