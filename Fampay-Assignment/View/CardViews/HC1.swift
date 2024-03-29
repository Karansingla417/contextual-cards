//
//  HC1.swift
//  Fampay-Assignment
//
//  Created by Karan singla on 02/02/24.
//

import SwiftUI

struct HC1: View {
    
    /// Card model instance
    @State var Card: CardGroup
    
    /// Environment key to openURL
    @Environment(\.openURL) var openURL
    
    var body: some View {
        if Card.isScrollable {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(Card.cards) { card in
                        hc1CardUI(card: card)
                            .frame(width: UIScreen.main.bounds.width - 90)
                    }
                }.padding(3)
            }
        }
        
        if !Card.isScrollable {
            HStack(spacing: 10) {
                ForEach(Card.cards) { card in
                    hc1CardUI(card: card)
                }
            }
        }
    }
}

// MARK: - HC1 Card View Builders
extension HC1 {
    // HC1 Card UI builder
    @ViewBuilder
    func hc1CardUI(card: Card) -> some View {
        HStack {
            AsyncImage(url: URL(string: card.icon?.imageURL ?? "")) { image in
                image.resizable()
            } placeholder: {
                Image("logo")
                    .resizable()
            }
            .frame(width: 35, height: 35, alignment: .center)
            .cornerRadius(20)
            .padding(.leading, 15)
            
            customCardText(entity: formatText(input: (card.formattedTitle?.text ?? card.title) ?? "",
                                              replaceBy: card.formattedTitle?.entities ?? [Entity].init()))
            .font(.roboto(weight: .medium))
            .padding(CCAlignment(rawValue: card.formattedTitle?.align ?? "left")!.value(), 10)
            
            
            Spacer()
            
            
        }.frame(height: 60)
            .background(Color(hexStringToUIColor(hex: card.bgColor ?? "#ffffff")))
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.5), radius: 1, x: 0, y: 0)
        
            .onTapGesture {
                openURL(URL(string: verifiedUrl(card.url))!)
            }
    }
}
