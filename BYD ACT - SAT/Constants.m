//
//  Constants.m
//  BYD ACT - SAT
//
//  Created by Allen White on 11/20/15.
//  Copyright © 2015 Be Your Dreams. All rights reserved.
//

#import "Constants.h"
#import <UIKit/UIKit.h>

@implementation Constants

const CGFloat fontSize = 17;
const CGFloat r = 0/255.0f;
const CGFloat g = 73/255.0f;
const CGFloat b = 124/255.0f;
const CGFloat a = 1;


+(NSMutableAttributedString *)setLineSpacing: (NSString *)str{
	NSDictionary *attrs = @{
				NSFontAttributeName:[UIFont systemFontOfSize:fontSize],
				NSForegroundColorAttributeName:[UIColor colorWithRed:r green:g blue:b alpha:a]
				};
	
	
	NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
	[style setLineSpacing:9];
	
	NSMutableAttributedString *astr = [[NSMutableAttributedString alloc] initWithString:str attributes:attrs];
	[astr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, str.length)];
	
	return astr;
}


+(NSMutableAttributedString *)setBold:(NSMutableAttributedString *)str rangeStart:(int)start rangeEnd:(int)end{
	NSLog(@"btag");
	NSDictionary *attrs = @{
				NSFontAttributeName:[UIFont boldSystemFontOfSize:fontSize],
				NSForegroundColorAttributeName:[UIColor colorWithRed:r green:g blue:b alpha:a]
				};
	const NSRange range = NSMakeRange(start, end);
	[str setAttributes:attrs range:range];
	return str;
}

+(NSMutableAttributedString *)setLink:(NSMutableAttributedString *)str rangeStart:(int)start rangeEnd:(int)end link:(NSString *)link{
	NSLog(@"str: %@", str);
	NSURL *URL = [NSURL URLWithString: link];
	NSDictionary *attrs = @{
				NSFontAttributeName:[UIFont boldSystemFontOfSize:fontSize],
				NSLinkAttributeName:URL
				};
	const NSRange range = NSMakeRange(start, end);
	[str setAttributes:attrs range:range];
//	?? why is this truncating shit
	NSLog(@"str: %@", str);
	return str;
}

+(NSArray *)ACTgetWhereToGoForHelpStrings{

	return @[
		 [self setLink: [self setLink: [self setLink:[self setLink:[self setLineSpacing:@"beyourdreams.org\n\nACT.org\n\nPrinceton Review\n\nAct Practice Test Booklet"]rangeStart:0 rangeEnd:16 link:@"http://www.beyourdreams.org"] rangeStart:18 rangeEnd:7 link:@"http://act.org"]  rangeStart:27 rangeEnd:16 link:@"http://www.princetonreview.com/college/act-test-prep"] rangeStart:45 rangeEnd:25 link:@"http://www.act.org/aap/pdf/Preparing-for-the-ACT.pdf"],
	
		 [self setLink:[self setLineSpacing: @"Our tutors will help you understand the questions on the practice test and can provide personal assistance to help you prepare.\n\nbeyourdreams.org"]  rangeStart:129 rangeEnd:16 link:@"http://www.beyourdreams.org"],
		 
		 [self setBold:[self setLink:[self setBold:[self setLink: [self setBold:[self setLineSpacing: @"Contact Be Your Dreams for more information on our ACT prep sessions.\n\nWeb:\nbeyourdreams.org\nEmail:\nbeyourdreams@ymail.com\nTwitter:\n@beyourdreamsllc"]  rangeStart:71 rangeEnd:3]  rangeStart:76 rangeEnd:16 link:@"http://www.beyourdreams.org"]  rangeStart:92 rangeEnd:5 ]  rangeStart:100 rangeEnd:23 link:@"mailto:beyourdreams@ymail.com" ]  rangeStart:123 rangeEnd:7],
		 
		 [self setLink:[self setLineSpacing: @"ACT.org\n\nACT Practice Tests:\n\n1) Full length test divided by subject\n\n2) Explanations for each answer"]  rangeStart:0 rangeEnd:7 link:@"http://www.actstudent.org/sampletest"],
		 
		 [self setLink: [self setLineSpacing: @"Princeton Review\n\n1) Option to take self-paced test online\n\n2) Option to be tested in person at central location"] rangeStart:0 rangeEnd:16 link:@"http://www.princetonreview.com/college/free-act-practice-test"],
		 
		 [self setLink:[self setLink:[self setLineSpacing: @"Act Practice Test Booklet\n\n1) Ask guidance counselor for a printed copy\n\n2) Email Be Your Dreams for an online version."]  rangeStart:0 rangeEnd:25 link:@"http://www.act.org/aap/pdf/Preparing-for-the-ACT.pdf"]  rangeStart:76 rangeEnd:5 link:@"mailto:beyourdreams@ymail.com"]
		 ];
}

+(NSArray *)ACTgetTipsToImproveScoreStrings{
	return @[
		 [self setLink:[self setLineSpacing: @"ACT Student Practice Test\n\nTake each section of the practice test individually, untimed."]  rangeStart:0 rangeEnd:25 link:@"http://www.actstudent.org/sampletest"],
		 [self setLineSpacing: @"Have a notebook and pencil handy for notes on questions you get wrong.\n\nTake each section of the test without time and in one sitting."],
		 [self setLineSpacing: @"1) Click your choice for the answer on each question.\n\n2) Write the number of the questions you don\'t get correct (i.e. Passage 3 Question 5)." ],
		 [self setLineSpacing: @"3) Read and understand the pop up of the explanation of why it is incorrect and answer the question again.\n\n4) When you get the question correct, take notes on the pop up that explains the correct answer."],
		 [self setLineSpacing: @"5) Once you have completed the practice test on ACT.org for one subject (i.e. English), do not move on to the next subject."],
		 [self setLineSpacing: @"6) Keep the notes you took handy for after you determine your score."],
		 [self setBold:[self setLineSpacing: @"Scoring the Test\n\n1) Score the test by determining the number of questions you got correct."] rangeStart:0 rangeEnd:16],
		 [self setLineSpacing: @"2) Then divide the number of questions you got correct by the total number of questions."],
		 [self setLineSpacing: @"3) For example: I got 57 questions right. There are 75 total questions.\nSo 56 / 75 = 0.76. Then multiply that number by 36. The answer you get is your score. The score should be between 1 &amp; 36. (For example: 36 * 0.76 = 27)."],
		 [self setLineSpacing: @"5) If you do not reach the minimum score set by the exam administrators, thoroughly review and understand the notes you took on the incorrect answers before you retake the test timed."],
		 [self setBold:[self setLink:[self setBold:[self setLineSpacing: @"Contact Be Your Dreams for affordable sessions that walk you through the questions you got incorrect.\n\nEmail: beyourdreams@ymail.com\nTwitter: @beyourdreamsllc"] rangeStart:103 rangeEnd:5 ] rangeStart:110 rangeEnd:22 link:@"mailto:beyourdreams@ymail.com"] rangeStart:133 rangeEnd:7]
		 ];
}

+(NSArray *)ACTgetAboutTheTestStrings{
	return @[
		 [self setBold:[self setLineSpacing: @"ACT\n\nThe ACT consists of Four required sections:\n\nEnglish\nMath\nReading\nScience\nWriting (optional)" ] rangeStart:0 rangeEnd:3],
		 [self setLineSpacing: @"The English test has 75 questions to complete in 45 minutes.\n\nYou need a minimum score of 18 to be considered college ready." ],
		 [self setLineSpacing: @"The Math test consists of 60 questions in 60 minutes.\n\nYou need a minimum score of 22 to be college ready." ],
		 [self setLineSpacing: @"The Reading test consists of 40 questions in 35 minutes.\n\nYou need a minimum score of 22 to be considered college ready." ],
		 [self setLineSpacing: @"The Science test consists of 40 questions to be completed in 35 minutes.\n\nYou need a minimum score of 23 to be considered college ready." ],
		 [self setLineSpacing: @"The Writing section consists of a 40 minute essay.\n\nYou need a minimum score of 7 out of 12 to be considered college ready." ],
		 [self setLineSpacing: @"Only score English, Math, Reading, and Science for your composite score.\n\nThe Writing section is scored separately." ],
		 [self setLineSpacing: @"The highest possible score for the ACT is a 36.\n\nThe national average composite score for the ACT is a 21.\n\nThe total time for the ACT test is 3 hours and 45 minutes." ],
		 [self setLink:[self setLineSpacing: @"For more information about what the ACT test consists of visit:\n\nACT.org"] rangeStart:65 rangeEnd:7 link:@"http://www.actstudent.org/testprep/descriptions/"]
		 ];
}





+(NSArray *)SATgetWhereToGoForHelpStrings{
	return @[
		 [self setLineSpacing: @"<a href=\"http://www.beyourdreams.org\">beyourdreams.org</a> \n\n <a href=\"https://www.khanacademy.org/sat\">Khan Academy</a> \n\n <a href=\"https://sat.collegeboard.org/practice/sat-practice-test\">SAT.org</a> \n\n <a href=\"http://www.princetonreview.com/college/sat-test-prep\">Princeton Review</a>" ],
		 
		 [self setLineSpacing: @"Our tutors will help you understand the questions on the practice test and can provide personal assistance to help you prepare.\n\n<a href=\"http://www.beyourdreams.org\">beyourdreams.org</a>" ],
		 
		 [self setLineSpacing: @"Contact Be Your Dreams for more information on our ACT prep sessions.\n\n<b>Web:</b>\n<a href=\"http://www.beyourdreams.org\">beyourdreams.org</a>\n<b>Email:</b> <a href=\"mailto:beyourdreams@ymail.com\">beyourdreams@ymail.com</a>\n<b>Twitter:</b>\n@beyourdreamsllc" ],
		 
		 [self setLineSpacing: @"<a href=\"https://www.khanacademy.org/sat\">Khan Academy</a>\n\nSAT Practice Tests:\n\n1)  Sign up for free account.\n\n2)  Watch video tutorials on each practice test question." ],
		 
		 [self setLineSpacing: @"<a href=\"https://sat.collegeboard.org/practice/sat-practice-test\">SAT.org</a>\n\n1) Full length test\n\n2) Option for online or print test\n\n3) Option to download Study Guide\n\n4) Ability to Score the test yourself after completing test\n\n5) Same questions covered in Khan academy videos" ],
		 
		 [self setLineSpacing: @"<a href=\"http://www.princetonreview.com/college/sat-test-prep\">Princeton Review</a>\n\n1) Option to take self-paced test online\n\n2) Option to be tested in person at central location"]
		 
		 ];
}

+(NSArray *)SATgetTipsToImproveScoreStrings{
	return @[
		 [self setLineSpacing: @"1) As you take the practice test, write down each question that you do not understand or have trouble with as you take the practice test." ],
		 [self setLineSpacing: @"2) After completing the test, go to <a href=\"http://khanacademy.org/sat\">Khan Academy</a> to watch the video on those questions.\n\n3) Take notes of the explanations as you watch the video for each question." ],
		 [self setLineSpacing: @"4) Review and understand your notes for each question.\n\n5) Retake the print version of the practice test for best results." ],
		 [self setLineSpacing: @"<a href=\"http://princetonreview.com\">Princeton Review</a>\n\nPrinceton Review provides a copy of your score report for both the online and in person practice tests.\n\nThe score report consists of each question you got correct and incorrect." ],
		 [self setLineSpacing: @"Contact Be Your Dreams for affordable sessions that walk you through the questions you got incorrect.\n\n<b>Email:</b> <a href=\"mailto:beyourdreams@ymail.com\">beyourdreams@ymail.com</a>\n<b>Twitter:</b>\n@beyourdreamsllc"]
		 ];
}

+(NSArray *)SATgetAboutTheTestStrings{
	return @[
		 [self setLineSpacing: @"<b>SAT</b>\n\nCurrently the SAT test consists of three sections:\n\nMath\nCritical Reading\nWriting" ],
		 [self setLineSpacing: @"Math is made up of three separate sections equal to 70 minutes in time.\n\nIt ranges from a score of 200 to 800.\n\nThe average Math score is 513." ],
		 [self setLineSpacing: @"Critical Reading is made up of three separate sections equal to 45 minutes in time.\n\nIt ranges from a score of 200 to 800.\n\nThe average Critical Reading score is 497." ],
		 [self setLineSpacing: @"Writing skills is made up of one essay equal to 25 minutes in time; two grammar sections equal to 35 minutes, and an experimental section equal to 25 minutes." ],
		 [self setLineSpacing: @"Writing scores range from 200 to 800.\n\nThe average Writing Skills score is 487." ],
		 [self setLineSpacing: @"The highest possible score for the SAT is a 2400.\n\nThe total time for the SAT test with the writing section is 3 hours and 45 minutes.\n\nThe total time for the SAT test without the writing section is 3 hours and 20 minutes." ],
		 [self setLineSpacing: @"The SAT test will be redesigned for the graduating class of 2017. The new test dates are as follows:\n\nMarch 2016\nMay 2016\nJune 2016" ],
		 [self setLineSpacing: @"The Redesigned SAT taken by high school juniors in 2016 will consist of two sections:\n\nMath, and Evidence-Based Reading and Writing." ],
		 [self setLineSpacing: @"The Math consists of one 55 minute section with a calculator and one 20 minute section with no calculator.\n\nIt ranges from a score of 200 to 800." ],
		 [self setLineSpacing: @"The Evidence-Based Reading and Writing portion will consist of one 65 minute reading section, one 35 minute Writing and Language section, and one Optional 50 minute essay.\n\nIt ranges from a score of 200 to 800." ],
		 [self setLineSpacing: @"The highest possible score for the Redesigned SAT is a 1600.\n\nThe total time for the Redesigned SAT with the essay is 3 hours and 50 minutes.\n\nThe total time for the Redesigned SAT without the essay is 3 hours." ],
		 [self setLineSpacing: @"For more information about what the SAT test consists of visit:\n\n<a href=\"https://www.testmasters.net/SatAbout\">Test Masters</a>\nAnd\n<a href=\"http://www.princetonreview.com/college/sat-information\">Princeton Review</a>"]
		 ];
}


@end
