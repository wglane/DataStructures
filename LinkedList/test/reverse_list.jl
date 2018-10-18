import LinkedList

c = LinkedList.ListNode("c", nothing)
b = LinkedList.ListNode("b", c)
a = LinkedList.ListNode("a", b)

LinkedList.print_list(a)

LinkedList.reverse!(a)
LinkedList.print_list(c)

LinkedList.reverse_right!(c)
LinkedList.print_list(a)