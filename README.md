JGLargeNumberFormatter
======================

NSNumberFormatter subclass that allows formatting of large number using an abbreviations for billions, millions and/or thousands.

Usage
=====
	JGLargeNumberFormatter* formatter = [[JGLargeNumberFormatter alloc] init];
  formatter.billionsAbreviation = @"B";
  formatter.millionsAbreviation = @"M";
  formatter.thousandsAbreviation = @"K";
  
  NSInteger someBillions = 3670000000;
  NSInteger someMillions = 70400000;
  NSInteger someThousands = 3100;
  
  self.billionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someBillions]];
  self.millionsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someMillions]];
  self.thousandsLabel.text = [formatter stringFromNumber:[NSNumber numberWithInteger:someThousands]];