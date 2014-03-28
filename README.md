# Introducing the Dynarex-Levenshtein gem

    require 'dynarexlevenshtein'

    dyn = DynarexLevenshtein.new('stable','stebl').to_dynarex
    puts dyn.to_h

output:

    {:line=>"0", :label=>"", :col0=>"", :col1=>"s", :col2=>"t", :col3=>"e", :col4=>"b", :col5=>"l"}
    {:line=>"1", :label=>"", :col0=>"0", :col1=>"1", :col2=>"2", :col3=>"3", :col4=>"4", :col5=>"5"}
    {:line=>"2", :label=>"s", :col0=>"1", :col1=>"0", :col2=>"1", :col3=>"2", :col4=>"3", :col5=>"4"}
    {:line=>"3", :label=>"t", :col0=>"2", :col1=>"1", :col2=>"0", :col3=>"1", :col4=>"2", :col5=>"3"}
    {:line=>"4", :label=>"a", :col0=>"3", :col1=>"2", :col2=>"1", :col3=>"1", :col4=>"2", :col5=>"3"}
    {:line=>"5", :label=>"b", :col0=>"4", :col1=>"3", :col2=>"2", :col3=>"2", :col4=>"1", :col5=>"2"}
    {:line=>"6", :label=>"l", :col0=>"5", :col1=>"4", :col2=>"3", :col3=>"3", :col4=>"2", :col5=>"1"}
    {:line=>"7", :label=>"e", :col0=>"6", :col1=>"5", :col2=>"4", :col3=>"3", :col4=>"3", :col5=>"2"}
    => nil

    puts dynarex.summary[:distance] #=> 2

    dyn.save('levenshtein.xml', pretty: true)

## Resources

 * [jrobertson/dynarex-levenshtein](https://github.com/jrobertson/dynarex-levenshtein)

