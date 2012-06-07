# CombinationHash

The hash has same values associated with combination of arrayed parameters.

## Example

```ruby
ch = CombinationHash.new
ch[2,3,4] = 8
p ch[2,3,4] #=> 8
p ch[3,2,4] #=> 8
p ch[4,2,3] #=> 8
```

### Conctructor Methods

```ruby
ch = CombinationHash([3,4,5] => 6
                     [2,1] => 10)
					 
p ch[1,2] #=> 10
```

## Install

```
gem 'combination_hash'
```

## Copyright

Copyright (c) 2012 Masaki Sawamura. See LICENSE.txt for
further details.

