def add_vat(price,nds):
    nds_price = price + price * nds
    return nds_price

prices = [1000, 3499, 250]
nds = 0.20
for i in range(len(prices)):
    print(add_vat(prices[i],nds))