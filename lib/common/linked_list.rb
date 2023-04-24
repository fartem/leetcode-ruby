# LinkedList implementation for this project
class ListNode
  # @param val {Integer}
  # @param _next {ListNode}
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  # @param values {Array}
  def self.from_array(values)
    return if values.empty?

    list = ListNode.new(values.first)
    head = list
    values.drop(1).each do |value|
      list.next = ListNode.new(value)
      list = list.next
    end
    head
  end

  # @param other {LinkedList}
  def ==(other)
    are_equals(self, other)
  end

  # @param curr {ListNode}
  # @param other {ListNode}
  def are_equals(curr, other)
    return true if curr.nil? && other.nil?
    return false if curr.nil? || other.nil?

    curr.val == other.val && are_equals(curr.next, other.next)
  end

  attr_accessor :val, :next
end
