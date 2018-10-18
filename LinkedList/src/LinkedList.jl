# Julia practice
# Reverse Linked List
module LinkedList

abstract type Node end

mutable struct ListNode{T} <: Node
	val::T
	next::Union{ListNode{T}, Nothing}
end

const LL = Union{ListNode, Nothing}

function reverse!(list::LL)
	reverse_rec!(list, nothing)
end


function reverse_rec!(node::LL, prev::LL)
	if node == nothing
		return
	end

	next = node.next
	node.next = prev
	
	reverse_rec!(next, node)
end


function reverse_right!(node::LL)
	if node == nothing || node.next == nothing
		return
	end

	reverse_right!(node.next)
	node.next.next = node
	node.next = nothing

	return
end


function print_list(node::Union{ListNode, Nothing})
	while node != nothing
		print(node.val)
		if node.next != nothing
			print(", ")
		end
		node = node.next
	end
	print("\n")
end

end # module