# Flutter samples

<p>
  <a href="https://github.com/gerfalcon">
    <img alt="GitHub: gerfalcon" src="https://img.shields.io/github/followers/gerfalcon?label=Follow&style=social" target="_blank" />
  </a>
  <a href="https://twitter.com/SandroMaglione">
    <img alt="Twitter: gerfalcon" src="https://img.shields.io/twitter/follow/GerfalconVogel?style=social" target="_blank" />
  </a>
</p>

In February '23, during the [Flutter Forward Extended meetup of Flutter Abu Dhabi and Dubai](https://www.linkedin.com/posts/flutter-ad_we-still-cant-get-over-how-great-yesterdays-activity-7035605328784207872-5ebD?utm_source=share&utm_medium=member_desktop), I gave the following **technical quiz game activity** for **50+ participants**.
- [Meetup link](https://www.meetup.com/flutter-ad/events/291592951/)
<p align="center">
<img src="https://github.com/gerfalcon/gerfalcon/assets/15221068/46967774-7ebc-4ecd-83de-c1f740058e8b" width="500" alt=""/>
</p> 

# Flutter Quiz
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
var out = useCase("Hello world!");

void main() async => print(await out);
```
- ✅ 'Hello world'
- ❌ Instance of '_Future<String>'
- ❌ 'ComplexUseCase("Hello world!")'
- ❌ 'out'

  
### 7. [Future](https://dart.dev/codelabs/async-await)
[DartPad](https://dartpad.dev/?id=13fa16eac7aa6d77dee25bdb0d7aad58)

``` dart
void asyncFun() async {
  try {
    throw Exception("");
    print("0");
  } catch (e) {
    print("1");
  } finally {
    await Future.delayed(Duration(seconds: 1));
    print("2");
  }
}

void main() {
  asyncFun();
  print("3");
}
```
- ❌ 0 1 2 3
- ❌ 1 2 3
- ✅ 1 3 2
- ❌ 3
  
  
  
### 8. [TypeDef]()
[DartPad](https://dartpad.dev/?id=f9f4d502881102470bc29b34749722c9)
``` dart
typedef Animal = String;
typedef CuteFactor = int;

void main() {
  const Map<Animal, CuteFactor> trend = {
    'old grumpy cat': 4,
    'dog': 100,
    'tRex': 1
  };
  print(trend['dog'] as CuteFactor);
}
```

- ❌ trend['dog'] as CuteFactor
- ✅ 100
- ❌ dog
- ❌ 'Compilation Error'
  

### 9. Lists
[DartPad](https://dartpad.dev/?id=2add3831431b4451ad6e3b5b55d7364f)
``` dart
void main() {
  List<String> list1 = ['a', 'b', 'c'];
  List<String> list2 = ['x', 'y'];
  List<String>? listNullable = null;

  List<String> lists = [
    ...list1,
    if (false) ...list2,
    ...?listNullable,
  ];
  print(lists);
}
```

- ❌ []
- ✅ [a, b, c]
- ❌ [a, b, c, x, y]
- ❌ null
  

### 10. Platform
❗❗❗❗ Given the code below, what **couldn't** print out to the console?
``` dart
void main() {
    
  print(Platform.operatingSystem.toString());
  
}
```

- ❌ fuchsia
- ❌ windows
- ❌ macos
- ✅ iphone
  
