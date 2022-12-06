# # El método Krawczyk
#
#> ## Alicia Ximena Cortés Barajas
#
#-
#> #### Aritmética de Intervalos 2023-1
#
#> #### Facultad de Ciencias, UNAM

# El método de Krawczyk es una alternativa al método de Newton, en la que, no es necesario dividir entre la extensión intervalar de la derivada $F^\prime([x])$, lo cual nos ahorra el problema de considerar loas casos en los que el cero se encuentra en la derivada y tener que usar división extendida.$[1]$

# Además, en el caso multivariable, para el método de Newton tendremos que si $F(x^*) = 0$ y $dF(x^*)$ es una matriz no singular, es decir, su determinante es diferente de cero y por ende es invertible; tendremos que la raíz $x^*$ es un punto fijo atrayente para el operador de Newton$[2]$
# $$N([x]; x) = x - \frac{f(x)}{F^\prime([x])}$$
# Lo que se traduce en que, si iniciamos en un punto $x_0$ suficientemente cercano a $x^*$, la iteración siempre convergerá a $x^*$, puesto que en tal punto $x_0$ todas las soluciones de la función tendrán un comportamiento asintótico $\lim_{x\to\infty} F(x) = x^*$, lo cual puede representar un problema al no permitir ver el resto de las raíces. $[2]$

# Ahora, veamos el método Krawczyk

# Sea $f:[x]\to\mathbb{R}$ una función continua y diferenciable en $[x]$ $(C^1)$, con raíz $x^* \in [x]$, análogo al método de Newton, expandimos la función usando el teorema del valor medio, resultando en la siguiente expresión

# $$f(x) = f(x^*)+f^\prime(\zeta)(x-x^*) = f^\prime(\zeta)(x-x^*)$$
# para alguna $\zeta$ entre $x$ y $x^*$,

# Después multiplicamos por una constante finita $C$
# $$Cf(x) = Cf^\prime(\zeta)(x-x^*)$$
# y sumamos $x^*- x$ a ambos lados

# $$x^*- x +Cf(x) = x^*- x + Cf^\prime(\zeta)(x-x^*)$$
# y factorizando tendremos
# $$x^* - x +Cf(x) =(Cf^\prime(\zeta) - 1)(x-x^*)$$

# De donde, sacando un menos del primer paréntesis de lado derecho de la igualdad, y despejando $x^*$ obtenemos

# $$x^* = x - Cf(x) -(1-Cf^\prime(\zeta))(x-x^*)$$


# Pero como $x^* \in [x]$ y $\zeta \in [x]$ podemos extender esto a intervalos de la siguiente manera

# $$x^* \in x - Cf(x) -(1-Cf^\prime([x]))(x-[x])\equiv K([x],x,C)$$

# De forma que, como se puede observar, la raíz queda contenida en el operador de Krawczyk para cualquier $x\in [x]$ y $C$ finita

# Ahora bien, si tomamos $x = m = mid([x])$ y $C = \frac{1}{f\prime(m)}$ siendo esta la inversa aproximada del punto medio de $F\prime([x])$ entonces la ecuación anterior toma la siguiente forma

#$$
#K\left([x], m, \frac{1}{f\prime(m)}\right) = m - \frac{f(m)}{f\prime(m)} - \left(1-\frac{F\prime([x])}{f\prime(m)}\right)(-r,r)
#$$
# donde $r = rad([x])$

# Tomemos una región de búsqueda de raíces $[x_0]=[x]$, este será el iterado inicial para encontrar la raíz, entonces podemos definir la siguiente secuencia de intervalos
# $$
# [x_{k+1}] = K([x_k])\cap [x_k], k=0,1,2,\dots.
# $$

# Esta secuencia estará bien definida siempre que $f\prime(m)\neq 0$

# Hay algunos puntos interesantes a ver aqui, como se muestra en el siguiente teorema

# **Teorema**. Supongamos que $K([x])$ está bien definida, entonces se cumple que
# 1. si $x^*\in[x]$ entonces $x^*\in K([x])\cap [x]$
# 2. si $K([x])\cap [x] = \emptyset$, entonces $[x]$ no contiene a ninguna raíz de $f$;
# 3. si $K([x])\subseteq int([x])$, entonces $[x]$ contiene exactamente una raíz de $f$.

# Este teorema es muy parecido al presentado para el método de Newton
#
#-














#-
# ## Referencias
# - W. Tucker, Validated Numerics: A Short Introduction to Rigorous Computations, Princeton University Press, 2011
# -  [Interval Krawczyk and Newton method](https://ww2.ii.uj.edu.pl/~zgliczyn/cap07/krawczyk.pdf),  (20 de Febrero de 2007) Recuperado el 01 de Diciembre de 2022 de https://ww2.ii.uj.edu.pl/~zgliczyn/cap07/krawczyk.pdf.
