version 1.0

workflow hello_world {
  String name
  call say_hello {
    input:
      name = name
  }
}

task say_hello {
  String name

  command {
    echo "Hello, World!"
    echo "Hello ${name}!"
  }

  output {
    String salutation = read_string(stdout())
  }
}
