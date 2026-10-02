# Proposal for #1165: new attributes on `CableLeadThroughSpecification`

Issue: https://github.com/prostep-ivip-e-V/vec/issues/1165 — two new attributes for grommets, needed by DIN 72036 rule "989924".

I couldn't get the text of rule 989924 itself. DIN 72036 is paywalled, and neither the ARENA2036 overview nor any other public source lists the rules individually. So this proposal uses the VEC 2.2.0 model's own conventions plus standard rubber-testing practice.

## Where the attributes go

Both attributes belong on **`CableLeadThroughSpecification`**, not on `GrommetSpecification`:

- **Shape:** one grommet can have lead-throughs of different shapes, for example a Y-grommet with one straight and one curved outlet.
- **Stretching:** the part being stretched is the lead-through, when a connector is pulled through it.
- **Precedent:** the class already holds the technical properties of a lead-through (`type`, `geometry`, `sealingDimension`, `min/maxSegmentOutsideDiameter`, `sealable`).

## 1. Shape along the length: `form : CableLeadThroughForm [0..1]`

**Name.** VEC uses `shape`/`geometry` for cross-sections (`TubeSpecification.shape`, `CableLeadThroughSpecification.geometry` = Square/Circular/Oval). It uses `form` for the course along the length (`FittingSpecification.form` with Straight/Elbow/…, `TopologySegment.form`). Calling the new attribute `form` keeps it clearly apart from the existing `geometry`.

**New OpenEnumeration `CableLeadThroughForm`:**

| Literal | Description |
|---|---|
| `Straight` | The lead-through runs straight; entry and exit axes are the same. |
| `Curved` | The lead-through changes direction inside the grommet (e.g. a 90° door-hinge grommet). |

Possible addition: an optional `bendAngle : NumericalValue [0..1]` (in degrees), used only when `form = Curved`. It costs little and a rule check can use it. The other option, `Angled`, which `ConnectorOutletDirection` uses, isn't needed as long as the rule only tells straight from curved.

## 2. Maximum elastic expansion: new class `CableLeadThroughExpansionLimit`

The assumption in the issue is right. For elastomers, "how far can it be stretched" only has a meaning together with **how long** (and at what temperature). ISO 2285 measures tension set under exactly those conditions: a set strain, held for a set time at a set temperature. Manufacturers therefore give pairs like "stretch ×3 for at most 30 s", or several pairs forming a limit curve. A single scalar would lose that, so I suggest a small composed class that can occur more than once:

```
CableLeadThroughSpecification
  └── expansionLimit : CableLeadThroughExpansionLimit [0..*]  (composite)

CableLeadThroughExpansionLimit  (ExtendableElement)
  expansionFactor   : Double         [1]     ratio of expanded to nominal inner dimension
  maxDuration       : NumericalValue [0..1]  max time the expansion may be held (unit: Second)
  temperatureRange  : ValueRange     [0..1]  temperature at which the limit applies
  maxCycles         : Integer        [0..1]  how often the expansion may be repeated
```

**Why this design:**

- **`Double` factor:** same pattern as `ShrinkableTubeSpecification.shrinkingFactor` and `TerminalProtectionSpecification.shrinkingFactor`, so there's a precedent in the model.
- **`maxDuration` as `NumericalValue`:** `SIUnitName` already has `Second`, so no new unit is needed.
- **`[0..*]`:** covers both the simple case (one pair) and a limit curve, without a new model change later.
- **Missing duration:** without `maxDuration`, the factor is the short-term maximum.
- **`temperatureRange` and `maxCycles`:** these cover the "and other values" in the issue. Both are optional, so they can be dropped if the rule doesn't need them.

**The factor's reference must be defined in the documentation.** Suggestion: relative to the nominal inner dimension in the sealing area (`sealingDimension`), applied separately to width and height. A rule check can then compute the expanded opening directly and compare it with the size of the connector being pulled through. Using an absolute `maxExpandedDimension : Size` instead would be easier to check but harder for suppliers to state. I'd use the factor and derive the absolute value.

**Simple fallback:** if the working group prefers something smaller, use two plain attributes on `CableLeadThroughSpecification`: `maxExpansionFactor : Double` and `maxExpansionDuration : NumericalValue`. This can't hold a limit curve.

## Open questions for the next meeting

1. **What does rule 989924 actually check?** It decides whether the factor plus duration is enough, or whether temperature and cycles are needed too.
2. **Is the factor relative to `sealingDimension`**, or to the minimum segment diameter?
3. **Does `Curved` need the `bendAngle`** or a bend radius?
4. **Does the wiki need an update?** The Grommets guideline page (`content/specifications/vec/guidelines/component-types/grommets/index.md`) could get a short section explaining the expansion limit and the factor's reference.

## Sources

- VEC 2.2.0 model (`vec-2.2.0.mdxml` and the wiki index)
- [ARENA2036 – DIN 72036](https://arena2036.de/en/wire-harness-standardization/ueberblick/din-72036-2/)
- [DIN 72036:2024-06](https://www.dinmedia.de/en/standard/din-72036/376689255)
- [ISO 2285:2019 – tension set](https://www.iso.org/standard/77425.html)
- [pröff grommet expansion machines](https://proeff.de/standardmaschinen-fuerkabel-tuellenverarbeitung/tuellenmontage/)
