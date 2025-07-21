#!/usr/bin/env ruby
# coding: utf-8

# A simple converter for dictionary entries.
# Reads tab-separated fields from STDIN and outputs lines compatible with
# 01-dict.re. Compatible with Ruby 2.5.1.

entries = []

ARGF.each_line do |line|
  next if line.strip.empty?
  fields = line.strip.split("\t")
  next if fields.length < 4

  term = fields[2].strip
  description = fields[3].strip

  next if term.empty?

  entry_lines = []
  entry_lines << "    #{term}"
  entry_lines << "     * #{description}" unless description.empty?
  entries.concat(entry_lines)
end

puts entries.join("\n")
