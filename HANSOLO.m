NSString *fileName = @"HANSOLO.hs";
NSString *filePath = [NSString stringWithFormat:@"%@/%@", NSTemporaryDirectory(), fileName];

NSString *hansoloString = @"HANSOLO\n";
NSInteger hansoloCount = 1000000;

NSError *error;
NSString *fileContent = [@"" stringByPaddingToLength:hansoloCount * hansoloString.length withString:hansoloString startingAtIndex:0];

BOOL success = [fileContent writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];

if (success) {
    NSLog(@"File created at path: %@", filePath);
} else {
    NSLog(@"Error creating file: %@", error.localizedDescription);
}
