# frozen_string_literal: true

# https://leetcode.com/problems/design-hashmap/
class MyHashMap
  # Init
  def initialize
    @entries = ::Array.new(500, nil)
  end

  # @param {Integer} key
  # @param {Integer} value
  def put(key, value)
    i = index_for(key.hash, @entries.length)
    e = @entries[i]
    if e.nil?
      @entries[i] = ::Entry.new(key, value)
    elsif e.key == key
      e.value = value
    else
      p = e
      until e.nil?
        if e.key == key
          e.value = value

          break
        end

        p = e
        e = e.next
      end

      p&.next = ::Entry.new(key, value) if e.nil?
    end
  end

  # @param {Integer} key
  # @return {Integer}
  def get(key)
    i = index_for(key.hash, @entries.length)
    e = @entries[i]
    unless e.nil?
      until e.nil?
        return e.value if e.key == key

        e = e.next
      end
    end

    -1
  end

  # @param {Integer} key
  def remove(key)
    i = index_for(key.hash, @entries.length)
    e = @entries[i]

    return if e.nil?

    if e.key == key
      @entries[i] = e.next
    else
      p = e
      e = e.next
      until e.nil?
        p.next = e.next if e.key == key

        p = e
        e = e.next
      end
    end
  end

  private

  # @param {Integer} hash
  # @param {Integer} length
  def index_for(hash, length)
    hash & (length - 1)
  end
end

# Entry
class Entry
  # @param {Integer} key
  # @param {Integer} value
  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
  end

  attr_accessor :key, :value, :next
end
