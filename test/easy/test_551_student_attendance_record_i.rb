# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/551_student_attendance_record_i'
require 'minitest/autorun'

class StudentAttendanceRecordITest < ::Minitest::Test
  def test_default_one = assert(check_record('PPALLP'))

  def test_default_two = assert(!check_record('PPALLL'))
end
