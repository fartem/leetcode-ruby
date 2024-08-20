# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1160_find_words_that_can_be_formed_by_characters'
require 'minitest/autorun'

class FindWordsThatCanBeFormedByCharactersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      count_characters(
        %w[cat bt hat tree],
        'atach'
      )
    )
  end

  def test_default_two
    assert_equal(
      10,
      count_characters(
        %w[hello world leetcode],
        'welldonehoneyr'
      )
    )
  end

  def test_additional_one
    assert_equal(
      0,
      count_characters(
        %w[
          dyiclysmffuhibgfvapygkorkqllqlvokosagyelotobicwcmebnpznjbirzrzsrtzjxhsfpiwyfhzyonmuabtlwin
          ndqeyhhcquplmznwslewjzuyfgklssvkqxmqjpwhrshycmvrb
          ulrrbpspyudncdlbkxkrqpivfftrggemkpyjl
          boygirdlggnh
          xmqohbyqwagkjzpyawsydmdaattthmuvjbzwpyopyafphx
          nulvimegcsiwvhwuiyednoxpugfeimnnyeoczuzxgxbqjvegcxeqnjbwnbvowastqhojepisusvsidhqmszbrnynkyop
          hiefuovybkpgzygprmndrkyspoiyapdwkxebgsmodhzpx
          juldqdzeskpffaoqcyyxiqqowsalqumddcufhouhrskozhlmobiwzxnhdkidr
          lnnvsdcrvzfmrvurucrzlfyigcycffpiuoo
          oxgaskztzroxuntiwlfyufddl
          tfspedteabxatkaypitjfkhkkigdwdkctqbczcugripkgcyfezpuklfqfcsccboarbfbjfrkxp
          qnagrpfzlyrouolqquytwnwnsqnmuzphne
          eeilfdaookieawrrbvtnqfzcricvhpiv
          sisvsjzyrbdsjcwwygdnxcjhzhsxhpceqz
          yhouqhjevqxtecomahbwoptzlkyvjexhzcbccusbjjdgcfzlkoqwiwue
          hwxxighzvceaplsycajkhynkhzkwkouszwaiuzqcleyflqrxgjsvlegvupzqijbornbfwpefhxekgpuvgiyeudhncv
          cpwcjwgbcquirnsazumgjjcltitmeyfaudbnbqhflvecjsupjmgwfbjo
          teyygdmmyadppuopvqdodaczob
          qaeowuwqsqffvibrtxnjnzvzuuonrkwpysyxvkijemmpdmtnqxwekbpfzs
          qqxpxpmemkldghbmbyxpkwgkaykaerhmwwjonrhcsubchs
        ],
        'usdruypficfbpfbivlrhutcgvyjenlxzeovdyjtgvvfdjzcmikjraspdfp'
      )
    )
  end
end
