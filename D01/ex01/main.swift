var c1 = Card(color: Color.Diamond, value: Value.Neuf)
var c3 = Card(color: Color.Diamond, value: Value.Neuf)
var c2 = Card(color: Color.Heart, value: Value.Neuf)
print(c1.description)
if c1 == c3
{
    print("les deux cartes sont identique")
}
if c1 != c2
{
    print("les cartes sont differentes")
}
if c1 != c3
{
    print("erreur")
}
else
{
    print("ca fonctionne comme prevu")
}
