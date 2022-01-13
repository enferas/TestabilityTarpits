# JavaScript Testability Patterns

Each pattern is defined as a folder named with pattern ID and pattern name. If the pattern is characterized by more than 1 instance, subfolders are present for each of them. In the main folder is present a markdown file explaining the pattern and resuming its characteristics (feature vs internal API, negative test case, measurements results, discovery rule), .js and .html implementation files, a .json file representing the Abstract Syntax Tree analyzed for the creation of the discovery rule.

101 Patterns have been identified, with a total of 153 patterns instances.

- 40 for Object Oriented Programming (OOP)
- 20 for Negative Test Cases
- 22 Security Related
- 22 referred to Internal API

Concerning the Static-Dynamic features, we have:

- 101 Static
- 17 Dynamic D1
- 17 Dynamic D2
- 10 Dynamic D3
- 8 Dynamic D4

Some [JavaScript Official Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Introduction) sections have not be covered, in particular:

- WebAssembly and mainly of [Web API](https://developer.mozilla.org/en-US/docs/Web/API): not so interesting from the testability point of view.

- DataView, Atomics, BigInt, BigInt64Array, BigUint64Array, Float32Array, Float64Array, Int16Array, Int32Array, Int8Array, Intl, Infinity, ParseFloat, ParseInt, TypedArray, Uint32Array, Uint16Array, Uin8Array, Uint8ClampedArray, FinalizationRegistry: since not usable as a string source for XSS vulnerability (the one used for our pattern library definition).

[Testability_Patterns.pdf](https://github.com/enferas/TestabilityTarpits/blob/main/JS/Testability_Patterns/Testability_Patterns.pdf) sums up all the patterns created.

NOTE: the table reports 101 patterns due to a typo in submitted paper for NDSS.
