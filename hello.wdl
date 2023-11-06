version 1.0

workflow hello_world {
  call say_hello
}

task say_hello {
  command {
    echo "Hello, World!"
  }
  output {
    String salutation = read_string(stdout())
  }
}
