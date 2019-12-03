# To write captions and cross reference

```
BEGIN FIGURE OR TABLE
FIGURE HERE
\caption{This is the text of the caption}\label{Label}
OR TABLE HERE
END FIGURE OR TABLE

See figure~\ref{Label}
```

The `Label` must be unique. I usually write it in the form `Ch##fig##` (example: `Ch1fig2`). But you can also use general names for mnemonic reasons: `\label{Einstein equation}`.

Usually, caption for figures goes below the figure and for table above the table

Same goes for equations:
```
\begin{equation}\label{This one}
E=mc^2
\end{equation}
See equation~(\ref{This one}). Better put parenthesis for consistency
```

Same for sectioning:
```
\section{This is the title}\label{This is the label}
...
As we saw on section~\ref{This is the label}
```

# To write reference to the bibliography

Use `\autocite{label}` as you would use `\ref`, where `label` is now the label in the bib file:

From the bib file:
```
@book{barberBRML2012,
    author       = {Barber, D.},
    title        = {Bayesian Reasoning and Machine Learning},
    publisher    = {Cambridge University Press},
    year         = {2012}
}
```

`As we see in \autocite{barberBRML2012}`


# How to include an external image

\begin{figure}[!ht]
\includegraphics[width=0.5\linewidth]{./figures/FILENAME}
\caption{Write the caption}\label{WRITETHELABEL}
\end{figure}