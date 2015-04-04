//
//  Usuario.m
//  integracao-ios-objective-c
//
//  Created by Humberto Vieira de Castro on 4/4/15.
//  Copyright (c) 2015 Humberto Vieira de Castro. All rights reserved.
//

#import "Usuario.h"

@implementation Usuario



- (void) insereUsuario:(Usuario*) u
{
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://betovieira.com.br/integracao-ios-webservice/inseredados.php"]];
    
    [urlRequest setHTTPMethod:@"POST"];
    
    NSString *postString = [NSString stringWithFormat:@"tipo_operacao=%d&user=%@&senha=%@&apelido=%@&email=%@", 1, u.user, u.senha,  u.apelido, u.email];
    
    [urlRequest setValue:[NSString stringWithFormat:@"%lu", (unsigned long) [postString length]] forHTTPHeaderField:@"Content-length"];
    
    [urlRequest setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *con = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
    NSLog(@"%@", con);
}

@end
