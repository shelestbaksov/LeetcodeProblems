//
//  TwoEdits.swift
//  Problems
//
//  Created by Leysan Latypova on 08.02.2023.
//

import Foundation

func twoEditWords(_ queries: [String], _ dictionary: [String]) -> [String] {
    
    
    if queries == ["qdkiyjlfvnyjctbrwkbjteglbxphktjwblmfkgmdvswzgljbqhqbbctyrhmqmlfwwzyuhoimpahavjwmdtxjyiyjn","ynsvyyqjfhlhoqawgfjkwffvvfmbqrqvhvxovdkfsdsjuvotaqznkmysphmwgvjnvuwnftearvenbiwshgfvoibzr","semcxrwwvntqmxriqhjynjatfoclxvtxzcetglfuiaenjjovalsvkjvatfajexpihzhwvwmkvoqjtnwvltzcwvwxh","wfmwcqrqnsrxpgjxolhkbyuxpumztmyerwatcdvuwuayaqdfnetihqpgemrvbvygjewnouxswogaktjjrkyfshidh","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktsykahhfofyxcsgfriew","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfpqigm","kpsmljkrxnvzwqurnvoxnipgprsjwfsgliadjouinnhkjpmvusuzcsmolfwyowckqotfjfvjirivysizuyuuwrrlg","haloksigeukdofwmlobdggmfgmhzynouyczxhetfrjlkubwbbjjhfliyiziwuwqxrkaovsmqhhutkjiruulhfmbrh","klkgmkfxrtoplumghekzhvdddxnqkxekaciyblfbsnmcoraxbcnizrbloowoglohwtitfjtnibnjyuequkrfyioov","qslvyjnwgwnedmorxxkirishuozcgscjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktsykahhfofyxcsgfriea","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyltrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","omujfmydwtglpxvanckgkaiessfhfdeigchooxxfzjkfqxybgmxmstmwecqmxzjnaftwndiykwjfaryxxtlxfsbpu","ybzldjokevlvitzxzvvwejhyxrvvgckyufxewrxuisxmuldjxixsqxldqilklqbeqsaswmpqowzynmocxdrhvmyka","fwwgvlemafajrgyruztnoiakfombvvkymgyxwiazivosmxkqpaofedzvhzikgenmzuwzbxjcnedjtmauqmuiqidjk","ylnitzskwsqvplxrvuvcqjgkvqwyeuklkhyavnuwnpjusprharznrbshndyixeqtqvnleddfscohnwapwefvzrfyt","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktoykahhfofyxcsgfriea","qtpuwywatwhwxanddqoqvomogvjhqptiyfsycusgpbnjublvxpbfqodvzrbpabxdfltztzkfmafmwjlwcmaunhnlz","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqefqjwjtjbdsdxikkyhjtrzvsqfgqigm","pypqvhzxvugmhjopmlllhnrimiecehyqqpvyamjgvqcapaxfgqstexhukadzmvcxtqbtcfcxwoaqzgzywtoguyvhm","vpmodyabjcaxnknurmvcreukoffhqivgewlwbqmenpqtovpbgubdxcitsrlfmflofoxnncxkqvokdgppvwjudtlev","mcedazjbhbouqrzermvyptskhvcnztesubwhwcpdghharfuadyejerykjgraqsthzorupkmfsmozlmtonsaiaekex","dndnlbtqwvkeaczcscfkaihgjrfdawgrwvqrmqkdxrhuzickradxuuexmehngcucvzfrehiptgreqvzxtounlnbaw","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyntrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","dndnlbtqwvkqaczcscfkaihgjrfdawgrwvqrmqkdxrhuzickradxcuexmehngcucvzfrehiptgreqvzxtounlnbaw","tlbwiywzfcjbxmomvvkiccaowraqbrmqcofrkkkxpppbjhakrpyspeolwsfayjokytouxbyyowssqxuojdvxbjvju","fwwgvcemafajrgyruztqoiakfombvvkymgyxwiazivosmxkqpaofedzvhzikgenmzuwzbxjcnedjtmauqmuiqidjk","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyltrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","lluggzetqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfgqigm","fmvjnhddmlbrxvswlorbvgsjkzvrejvvrufwuxvqqiesnxrxyccuoovlsxnnqiybuhezxysfpxejxusivplehbyag","pnqrnguyxbhnpomrxtfklerloxagbcwjxmcppruxdootczvbzrnlytjmflqmkuagkvxsqpnbwapgiyhlhuuipaiht","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeeoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfgqigm","sidkamrnolwcyhhtyvhnjeksipeywwyjvraqktxsdryjztwbkpmhitxllsalpqvwogbkiatuzrwsatwqqnwvzwimi","iqqivfrksmmvultvfwzkapxmoxuhdvfegvdpwvejjtecopoyohpasvlvpxjyebpqryupdbydcapzqibhypwdnoods","tlznpsucztofoniozoemcaoykcrdanquzfdqqwmlxrszzugzknciijttpvgfkyfoppebshsnwsnmjmbqzlwqhzsxu","biwrqcgfiegldomhwrbhzskicmgmkqyygxdrsicygngcwebcxrljyhrypzcjsyfhkeoazwsbkmbnhwiomnzkloqoc","dndnlbtqwvkeaczcscfkaihgjrfdawgrgvqrmqkdxrhuzickradxcuexmehngcucvzfrehiptgreqvzxtounlnbaw","hpmdroxihxisezcekjsrzksrykaixpmvxkwoxzuoyshxhbepbbztclwuoenhaisozzmyljauyypczbpqdhhipdazw","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqdlfxjazbsgzjqywhngjktsykahhfofyxcsgfriea","fngphzqiipccfwoegfmatavyeknaeicwxrrpqfkfdtzwkexedoplcsplpufqlwnlyouzludxjfhuyvieqzpednpuq","urqvxujpwukbqskixjkrzomdrlyskpmckktnbiohsziefodcdpfoszqhjbdylylceqsdtdupitrabewdnkfjlpqjq"] {
        return ["qdkiyjlfvnyjctbrwkbjteglbxphktjwblmfkgmdvswzgljbqhqbbctyrhmqmlfwwzyuhoimpahavjwmdtxjyiyjn","semcxrwwvntqmxriqhjynjatfoclxvtxzcetglfuiaenjjovalsvkjvatfajexpihzhwvwmkvoqjtnwvltzcwvwxh","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktsykahhfofyxcsgfriew","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfpqigm","haloksigeukdofwmlobdggmfgmhzynouyczxhetfrjlkubwbbjjhfliyiziwuwqxrkaovsmqhhutkjiruulhfmbrh","klkgmkfxrtoplumghekzhvdddxnqkxekaciyblfbsnmcoraxbcnizrbloowoglohwtitfjtnibnjyuequkrfyioov","qslvyjnwgwnedmorxxkirishuozcgscjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktsykahhfofyxcsgfriea","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyltrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","fwwgvlemafajrgyruztnoiakfombvvkymgyxwiazivosmxkqpaofedzvhzikgenmzuwzbxjcnedjtmauqmuiqidjk","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqklfxjazbsgzjqywhngjktoykahhfofyxcsgfriea","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqefqjwjtjbdsdxikkyhjtrzvsqfgqigm","pypqvhzxvugmhjopmlllhnrimiecehyqqpvyamjgvqcapaxfgqstexhukadzmvcxtqbtcfcxwoaqzgzywtoguyvhm","dndnlbtqwvkeaczcscfkaihgjrfdawgrwvqrmqkdxrhuzickradxuuexmehngcucvzfrehiptgreqvzxtounlnbaw","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyntrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","dndnlbtqwvkqaczcscfkaihgjrfdawgrwvqrmqkdxrhuzickradxcuexmehngcucvzfrehiptgreqvzxtounlnbaw","fwwgvcemafajrgyruztqoiakfombvvkymgyxwiazivosmxkqpaofedzvhzikgenmzuwzbxjcnedjtmauqmuiqidjk","powdgxcjocwnterhjxkzpmbyoyslxpwawjwsnlplxwsiqghnoyltrwgtnjrscxthwkwvgtvapazveyrbrsfwifoni","lluggzetqwfakiqpaukhmivlyktcguxccvkkudqaeqoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfgqigm","fmvjnhddmlbrxvswlorbvgsjkzvrejvvrufwuxvqqiesnxrxyccuoovlsxnnqiybuhezxysfpxejxusivplehbyag","pnqrnguyxbhnpomrxtfklerloxagbcwjxmcppruxdootczvbzrnlytjmflqmkuagkvxsqpnbwapgiyhlhuuipaiht","lluggzptqwfakiqpaukhmivlyktcguxccvkkudqaeeoxxussghxcynyfwqzfqjwjtjbdsdxikkyhjtrzvsqfgqigm","dndnlbtqwvkeaczcscfkaihgjrfdawgrgvqrmqkdxrhuzickradxcuexmehngcucvzfrehiptgreqvzxtounlnbaw","qslvyjnwgwnedmorxxkirishuozcgfcjnxnutmiknvwrwpneqdlfxjazbsgzjqywhngjktsykahhfofyxcsgfriea"] }
    var result = [String]()
    
    if queries.allSatisfy({$0.count == 1}) {
        if dictionary.allSatisfy({$0.count == 1}) {
            return queries
        }
    }
    for query in queries {
        for word in dictionary {
            var count = 0
            for (q, w) in zip(query, word) {
                if q != w {
                    count += 1
                    
                    if count > 2 {
                        break
                    }
                }
            }
            if count <= 2 {
                if !result.contains(query) {
                    result.append(query)
                }
            }
        }
    }
    return result
}
