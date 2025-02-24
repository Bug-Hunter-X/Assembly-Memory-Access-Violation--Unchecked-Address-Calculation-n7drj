# Assembly Memory Access Violation Bug

This repository demonstrates a potential memory access violation bug in assembly code. The bug arises from an unchecked address calculation that can lead to accessing memory outside the program's allocated space. This is a common vulnerability that can be exploited in security contexts. The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version.

**Vulnerability:** The primary vulnerability is the lack of bounds checking on the values used in the address calculation. If the values of EBX and ECX are manipulated by a malicious actor, it is possible to cause a buffer overflow.

**Mitigation:** The solution involves adding checks to ensure that the calculated address falls within the bounds of allocated memory before attempting to access it.  Failing that, you should use appropriate memory allocation functions to obtain sufficient memory before calculation.