local M = {}

Node = {}
Node.__index = Node

function Node:new(value)
  return setmetatable({ value = value, next = nil }, self)
end

LinkedList = {}
LinkedList.__index = LinkedList

function LinkedList:new()
  return setmetatable({ head = nil, size = 0 }, self)
end

function LinkedList:append(value)
  local newNode = Node:new(value)
  if not self.head then
    self.head = newNode
  else
    local current = self.head
    while current.next do
      current = current.next
    end
    current.next = newNode
  end
  self.size = self.size + 1
end

function LinkedList:remove(value)
  local current = self.head
  local prev = nil

  while current do
    if current.value == value then
      if prev then
        prev.next = current.next
      else
        self.head = current.next
      end
      self.size = self.size - 1
      return true
    end
    prev = current
    current = current.next
  end

  return false
end

function LinkedList:printList()
  local current = self.head
  while current do
    io.write(current.value, "->")
    current = current.next
  end
  print('nil')
end

M.LinkedList = LinkedList

return M
