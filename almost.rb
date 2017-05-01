def almostIncreasingSequence(seq)
    i = seq.length - 1
    c = 0
    l = seq.length

    arr = seq.uniq
    return false if seq.length - arr.length > 1
    return true if arr == arr.sort

    while i >= 0
      arr = [].replace(seq)
      arr.slice!(i, 1)

      return true if arr == arr.sort.uniq
      c += 1 if seq[i - 1] > seq[i]
      puts i
      return false if c > 2
      i -= 1
    end

    false

end
