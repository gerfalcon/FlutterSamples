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
- ❌ 'double.infinity'



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
- ❌ 'Compilation error'

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

### 4. Test assertion

``` dart
void main() {
  test('My mom would be proud', () {
    print(expect(true, true));
  });
}
```
- ❌ 'Test passed: 1' 
- ❌ 'Expected: <true>, Actual: <'true'>' 
- ❌ 'Test failed'
- ✅ 'Compilation Error'
  
  
### 5. [Stream generator](https://dart.dev/guides/language/language-tour#generators)
[DartPad](https://dartpad.dev/?id=276f97309ecf31d00bbcaf0bc4c3692e)
``` dart
Stream<int> streamGenerator() async* {
  await Future.delayed(Duration(seconds: 1));
    yield 0;
    yield* streamGenerator();
  }

void main() async {
  await for (var value in streamGenerator()) {
    print(value);
  }
}
```
- ❌ 'Compilation Error'
- ❌ '0'
- ✅ '0 0 0 0 (...)'
- ❌ '0 1 2 3 (...)'

  
  
### 6. [Callable class with Future](https://dart.dev/guides/language/language-tour#callable-classes)
[DartPad](https://dartpad.dev/?id=e1fff70f6b94b9a58a33a44931d68010)
``` dart
class ComplexUseCase {
  Future<String> call(String text) async => text;
}

var useCase = ComplexUseCase();
var out = useCase("Hellow world!");

void main() async => print(await out);
```
- ✅ 'Hellow world'
- ❌ Instance of '_Future<String>'
- ❌ 'ComplexUseCase("Hello world!")'
- ❌ 'out'



