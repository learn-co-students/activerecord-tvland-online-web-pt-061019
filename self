
[1mFrom:[0m /mnt/c/Users/huydd/dev/flatiron/labs/activerecord-tvland-online-web-pt-061019/app/models/show.rb @ line 21 Show#actors_list:

     [1;34m7[0m: [32mdef[0m [1;34mactors_list[0m
     [1;34m8[0m:   [1;34m# show.name = "The Walking Dead"[0m
     [1;34m9[0m:   [1;34m# character = Character.new(:name => "Rick Grimes")[0m
    [1;34m10[0m:   [1;34m# andrew = Actor.new(first_name: "Andrew", last_name: "Lincoln")[0m
    [1;34m11[0m:   [1;34m# character.actor = andrew[0m
    [1;34m12[0m:   [1;34m# show.characters << character[0m
    [1;34m13[0m:   [1;34m# show.save[0m
    [1;34m14[0m: 
    [1;34m15[0m:   [1;34m# expect(show.actors_list.length).to eq(1)[0m
    [1;34m16[0m:   [1;34m# expect(show.actors_list).to include('Andrew Lincoln')[0m
    [1;34m17[0m:   actor_names = []
    [1;34m18[0m: 
    [1;34m19[0m:   [1;36mself[0m.characters.collect [32mdo[0m |char_name|
    [1;34m20[0m:     actor_names  << char_name.name + [31m[1;31m"[0m[31m - [1;31m"[0m[31m[0m + char_name.show.name
 => [1;34m21[0m:      binding.pry
    [1;34m22[0m:   [32mend[0m
    [1;34m23[0m: 
    [1;34m24[0m:   [1;34m# actor_names[0m
    [1;34m25[0m:   [1;34m# binding.pry[0m
    [1;34m26[0m: [32mend[0m

