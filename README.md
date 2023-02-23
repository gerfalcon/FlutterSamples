# Flutter tasks


## Given the code below, what will print out to the console?

### 1. [.ceil()](https://api.flutter.dev/flutter/dart-core/double/ceil.html)
[DartPad](https://dartpad.dev/?id=00263a7bcadebb81c13209e8f451eed9)
``` dart
void main() {
  final x = 3.5;
  final y = double.infinity;

print('${y.ceil()}');
}
```

- ✅ Uncaught Error: Unsupported operation  
- ❌ 3 
- ❌ 4 
- ❌ double.infinity



### 2. String Breaking
[DartPad](https://dartpad.dev/?id=b324ba4b8ca3586d32489f5220cf0c72)
``` dart
void main() {
  final maybeText = 'a'
    'b'
    'c';

  print(maybeText);
}
```
- ❌ 'a\nb\nc' 
- ✅ 'abc'  
- ❌ 'a b c' 
- ❌ Compilation error

### 3. Const DateTime

[DartPad](https://dartpad.dev/?id=51b751c15cb545dff46c904b46e103e5)
``` dart
void main() {
  const date = DateTime.now();
  print(date);
}
```
- ❌ 'Prints compile-time DateTime' 
- ❌ 'Prints run-time DateTime' 
- ❌ 'Runtime Error'
- ✅ 'Compilation Error'
