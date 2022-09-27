final project for mod 1 - Turing BE 2208

## Object instantiation
- The `NightWriter` and `NightReader` objects are instantiated at the end of their respective class files, to adhere to the instructions of calling the runner by way of the class file on the command line
- Accordingly, the test suite will fail if these two instances are not commented prior to running the test

## NightWriter algorithm
- follow along with `#process`
- `#separate_braille_rows` iterates over the `character_containers` within the `message_container` and pushes each row of braille into the `@rows_of_braille`
- `#write_to_file` will `#write_the_braille_data` stored in `@rows_of_braille` to the `@file_processor.output` file
- then the alogirthm will `#print_a_confirmation_message`
- all done

## NightReader algorithm
- follow along with `#process`
- `#convert_dictionary` by swapping the values and keys
- `#create_braille_pairs` grabs the input data, separates them by pair, then turns them into 2 element arrays
- `until` the `@array_of_braille_pairs` is empty..
- clear the `@message_container`
- grab the first line of braille and put them into `raw_braille_pairs`
- calculate the `#character_containers_needed`
- `#create_character_containers`
- `#fill_character_containers` with the `raw_braille_pairs`
- `#flatten_character_containers`
- send the characters to `@message`
- `@file_handler.output.write(@message)`
- `#print_a_confirmation_message`