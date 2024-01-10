#  AWK Commands

These are basic usage of AWK in the Linux Environment.
Here `output.txt` is where all the outputs/logs will be stored. If you want to display the result as it is, avoid using the `> output.txt`. For example: `awk '$1 <= 5{print $1, $2}' app.log`

### 0. Print Entire Log File:

```bash
   awk '{ print }' app.log > output.txt
```

### 1. Print Entire Log File:

```bash
   awk '{ print }' app.log > output.txt
```

### 2. Print Specific Columns (e.g., Timestamp and User):

```bash
   awk '{ print $1, $2 }' app.log > output.txt
```

### 3. Print Lines Where User is "User1":

```bash
   awk '$2 == "User1" { print }' app.log > output.txt
```

### 4. Calculate and Print the Total Number of Logins:

```bash
   awk '$3 == "Login" { count++ } END { print "Total Logins:", count }' app.log > output.txt
```

### 5. Print Lines with Timestamps in a Specific Range (e.g., 20220101 to 20220102):

```bash
   awk '$1 >= 20220101 && $1 <= 20220102 { print }' app.log > output.txt
```

### 6. Print Unique Users:

```bash
   awk '!seen[$2]++ { print $2 }' app.log > output.txt
```

### 7. Calculate and Print Average Timestamp:

```bash
   awk '{ sum += $1 } END { print "Average Timestamp:", sum/NR }' app.log > output.txt
```
