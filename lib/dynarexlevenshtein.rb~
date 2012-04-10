#!/usr/bin/env ruby

# file: dynarexlevenshtein.rb

require 'dynarex'

class DynarexLevenshtein

  attr_reader :to_dynarex, :distance

  def initialize(a,b)
    @distance = levenshtein(a,b)
  end

  def levenshtein(a,b)

    a, b = [a, b].sort_by(&:length)
    n, m = a.length, b.length

    schema = 'table[title,string1,string2, distance]/rows(' + \
        (['line','label'] + (1..n).map{|x| "col%s" % x}).join(',') + ')'
    @to_dynarex = Dynarex.new(schema)

    @to_dynarex.summary[:title] = 'Calculates the Levenshtein distance between a and b.'
    @to_dynarex.summary[:string1] =  a
    @to_dynarex.summary[:string2] =  b

    current = (n+1).times.to_a

    top_label = ['0','',''] + a.split('')    
    label = [''] + b.split('')
    h = Hash[([:line, :label] + (0..n).map{|x| ("col%s" % x).to_sym})\
      .zip(top_label)]
    @to_dynarex.create h

    (1..m).each do |i|
      previous, current = current, [i]+[0]*n

      h = Hash[([:line, :label] + (0..n).map{|x| ("col%s" % x).to_sym}).zip([i.to_s, \
        label[i-1]] + previous)]
      @to_dynarex.create h

      (1..n).each do |j|
        delete, change, add = current[j-1], previous[j-1], previous[j]
        change += 1 if a[j-1] != b[i-1]
        current[j] = [add+1, delete+1, change].min
      end
    end

    h = Hash[([:line, :label] + (0..n).map{|x| ("col%s" % x).to_sym}).zip([(m+1).to_s, label[-1]] + current)]
    @to_dynarex.create h

    @to_dynarex.summary[:distance] = current[n].to_s
    current[n]
  end
end
